Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B05AF6C054B
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 22:13:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbjCSVNl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 17:13:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbjCSVNk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 17:13:40 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3F0AFF0D
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:13:38 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id n125so10856522ybg.7
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679260418;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDsxhFGQnrKrjnXFLksqI9RFcjP3CDq8jfhz8h9Wr4k=;
        b=ZdQSPuWs56fqmvCrh/sVSJhIdOkQ/vQvikm5awGY8UqvL+vTlxnU7Yl4k9rvtp/EJB
         yuTE9puWeJM8UfKx5edktDqlgs7tAJL48eNgASjUAtKGsY+ZEonkFRbwlE3xUHj9Jr0I
         SScI4dQ/Hug570KWic10lwDSbNvVTmut2buQnk6PbpD1u1jtb95TsOIDYyix9nZuNwNY
         1xdavpVvCaBCx/pjak00VEn5/zJXHX5aXdEHfLiMswnazUFc9LiM+uDW2nwXFjKvX84A
         Lth7ycY4T6w9pDYNQqgtZPYq1pdHDC1Hx6llziPN88LTGl/FcrjgT5CBfLJMJsM99aEh
         VARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679260418;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KDsxhFGQnrKrjnXFLksqI9RFcjP3CDq8jfhz8h9Wr4k=;
        b=QKZI2ZsKxZOMeA8gNPxaXGiY3dBvNeoLe6sUT8ocOUeeclO9lyoLJP+4nTr/0lfI8O
         sE13d34Xhb4ZSFEexw8EaiN1tjJGHgkOyJzlBnbd7iW9/UhANKi3SL7ibrMkGd32+VNc
         Do6nwAdSlwjtkksWMR/HWTs7VbnujvyvD0Y8TMPg2PWgZmVuFCTytvVubqK7OPu/3iWa
         vcbzkcsAEro49AzY/Z9gssA50a/DhzTwaDE1vRo6D8y9c/QCEYYcs3saMt2WStdHYZor
         cxLcIwUgcnEUOyAiWhKZat93JZaTqTgNVlgXmQ65sAafKQ0rarnDVtoO/twak6dsL6ka
         aD/Q==
X-Gm-Message-State: AO0yUKUztt0qQuMXY1D5XhOnVaFXubApI9xwyasZhw+sshYyY6Ly6Wr4
        zKQh9D3uuFiiV1LxnlzWf1eAxRniPcONjOSOS6g1Wido3tREhwKb
X-Google-Smtp-Source: AK7set9LbcgMEdxORgs5g5mPDevC1ogGsWLboK9Gf1+bew26UUN+HynMywHt5ABAKSIUCh4+qK5sXs34SUSRcLRaIsY=
X-Received: by 2002:a25:4241:0:b0:b6b:6a39:9494 with SMTP id
 p62-20020a254241000000b00b6b6a399494mr1178014yba.4.1679260418235; Sun, 19 Mar
 2023 14:13:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230317225707.1552512-1-sre@kernel.org> <20230317225707.1552512-14-sre@kernel.org>
In-Reply-To: <20230317225707.1552512-14-sre@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 19 Mar 2023 22:13:26 +0100
Message-ID: <CACRpkdYWWwTu5x5iR_Gco-N+dOWGLmQQ=1p1gnznKC8ovZaS+Q@mail.gmail.com>
Subject: Re: [PATCHv3 13/14] power: supply: generic-adc-battery: improve error message
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 17, 2023 at 11:57=E2=80=AFPM Sebastian Reichel <sre@kernel.org>=
 wrote:

> Add device context and error code to the error messages to make it
> useful.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
