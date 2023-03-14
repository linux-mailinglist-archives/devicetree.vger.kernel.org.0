Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD1216B9EF8
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 19:46:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230521AbjCNSqZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 14:46:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231139AbjCNSqU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 14:46:20 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3F13B693B
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:45:46 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id e65so8014993ybh.10
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678819529;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8OE7w+4I+vParG7ILLLYFEi6tsPBU1Dfdg7jrl2/A0=;
        b=vaay+BVhvth7wEHfAouviS+jgCuQdGu+dNaLoZXJGJqT28dwC1VvV6+/HCSE+rSX3i
         u/Pjj/qHzlMS0HjQacAkG8N0zmlorNIIwcyUBen5LxigO1ezN2GJOkPeMW3LPXGnG6tl
         GfmbAXAoVxSAt5llnFxPz6alyU0Xct24ZsAwKU/RVEYyproTDiWlON+7Ew831dTUe6Ky
         XmYYIZ/DN3icrvxaxWwiympHPo7Dy+3BUO/Eu0cvTkf/s7xwB2nqEtFeUvKhHsdZp+me
         aQoPIufA9aITuIiZ855sWpqYqFz+XvsBmKI4okWJ+Rjw556fEjeanUawunJt7zwrHOlU
         TNKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678819529;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y8OE7w+4I+vParG7ILLLYFEi6tsPBU1Dfdg7jrl2/A0=;
        b=u0gjpd8bNJLzdpGsYaQu0xJIKYillIBxKGLTCrSzV9EYAQ/9sD4QHmjWerIm02zt1o
         cNm6LNgPS/Qdj3qN1NGvnKpLNkQVMxE/rj7lnAVHO8gf4fZF53RBGmYteXv3xe9MLr9p
         0uf9upOEhC/R9L14P+ebllvb/2hVpWtHt2fy7r98Bw7zeX5RWobQyx9WHrdTdLhWbYg7
         PrGiUXuw+HLDGavScM73h17/8UkyFCcOwqEhVaGSrz78Nydh828dbRBsTrP+NB1JYa96
         Z5c9drZrKDKKQ7xznBweoHgqKtGUFLw1/5fd2rlA15F45gAObRb8V7ksyfRRQJkwa6xO
         JG2Q==
X-Gm-Message-State: AO0yUKWOOCq+3iKXYgqnVS+bftuIvtmAGVNDxDudSbC9bCyCRS97hWEV
        lPM+kMTUukSpHcvKiBTRxqbrR/rF0iNXcGavmr4hAg==
X-Google-Smtp-Source: AK7set+UhF+wVRcTtm+dgNrnZSOkyWuMoQIxlxPqjjlJxOyU4N+ppq/c4ZzWCkjIkwj/xBqFI90UC2De42EYSu+KXbU=
X-Received: by 2002:a5b:209:0:b0:aa9:bd2e:3746 with SMTP id
 z9-20020a5b0209000000b00aa9bd2e3746mr16977021ybl.4.1678819529283; Tue, 14 Mar
 2023 11:45:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230217-topic-lenovo-panel-v2-0-2e2c64729330@linaro.org>
 <20230217-topic-lenovo-panel-v2-1-2e2c64729330@linaro.org>
 <CACRpkda7=Y4ZRBDOhxE974qV-yXuFyZZs7m_aBwtF9qivV5WQg@mail.gmail.com> <aa963fa9-e2d6-a7e1-8396-745de5f996d4@linaro.org>
In-Reply-To: <aa963fa9-e2d6-a7e1-8396-745de5f996d4@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 14 Mar 2023 19:45:17 +0100
Message-ID: <CACRpkdZdeJNDPNvQhUMzwid67jcVNKv7TuNzvm3hQxsnfFst9w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display/panel: Add Lenovo NT36523W
 BOE panel
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Jianhua Lu <lujianhua000@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 8, 2023 at 12:02=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:

> > It would not be helpful for driver writers to have two different bindin=
gs
> > for similar hardware hand having to write code to handle different
> > properties depending on which binding is used, so please unify into
> > one binding by cooperating with Jianhua.
> I'll look into Jianhua's patchset and try to work atop that!

Jianhua's driver is merged to drm-misc-next so you can make
your addendum now!
https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3Dc61093b56a2ff15e449e=
8af56e96dc5a312baf25
https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3D0993234a00451e0a5c3e=
47d8b0f2e01dac6cedbf

Yours,
Linus Walleij
