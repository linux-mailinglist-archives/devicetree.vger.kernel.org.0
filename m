Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83957577FB5
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 12:33:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234230AbiGRKdS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 06:33:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234290AbiGRKdR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 06:33:17 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 702821DA45
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 03:33:16 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id f73so19902734yba.10
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 03:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nB9TysPxASoCZq2mAu9xXViPEOO/JgqPxrNGpKeDpVM=;
        b=SBJxEmiH2w/cKdGxjgxmO0ELCL2TKEVUhjnrHf02yQcDhryh8KhJbZjCQLKQGk++Nb
         8NRjbtRS5fTBMu89pQaD4QQbY4IVRizv3Z4O870kh6S7lm/ldRQVOx5W9p8dE8uF8+q1
         gqg2Jd/fcZQHcRLuT+wb0O8fOnapWzaZMH5Liowteg/RcA8gHe0WV07PEXwSCJIfgWxk
         +wdXGDMDIJl3sz5FhRUP/2eq2YXFFYNpj2G+9C20ZrxnjY+gLD7DuEhrz0BMKf+9Ere+
         RH3XBHlqCJ8O07Lxqjw0ivBFpU9k3qjHLX2kXgQIAzto68wevq5RblZGEO7+W3NA0+fV
         qOaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nB9TysPxASoCZq2mAu9xXViPEOO/JgqPxrNGpKeDpVM=;
        b=1T/W7uQrmxbs4nbSDcSb1nZS8SQI0GfXyG0+b20wUAfPGuc4KVLp5NwMM9tDGi29t7
         KX6TzRcDIRMM+9Y3AbAw5of7xHdWXEhZ6HMpcW5Gbpr1O4xywdHGK8mAH56KMgJ+DCgK
         KY11SZitQ2KAdNanNw+gdEaddpifmEIK1rufMubViDMXbJ+GaVOdrZ4HPaeITIFMsEPs
         +fxUBGMpNyPtaEaI8WaqfcMuWTxYmMTcIqmjCfIbFTsJ7WU/JaiDq6AzQfa/dn0y9Tvj
         IznzYXovlUDw3D1GcnYWXSiFyDoNgffNARbOLYtiysnQaB7vnpkUrI1oU+ZIFlDpAVgx
         NTAQ==
X-Gm-Message-State: AJIora+aX3T5Qxk+ekX86mgCasdxGH3fbJPCn0WMuJJ445IC4/5u2Rpt
        7MK6uVKNgQKbCI440JgdmhiBt3wAKRenjlhvNmQxNA==
X-Google-Smtp-Source: AGRyM1vLEixkZHCYiYRq5YltGu2Qn8XImkgcCPCgMkUAGgYU0xegYa5n58mUOA0/a3wp8LIkZmDox8dNhNHDnjcvtHM=
X-Received: by 2002:a25:8c91:0:b0:670:5c00:7c6a with SMTP id
 m17-20020a258c91000000b006705c007c6amr1433817ybl.66.1658140395744; Mon, 18
 Jul 2022 03:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220713131421.1527179-1-nuno.sa@analog.com> <20220713131421.1527179-5-nuno.sa@analog.com>
In-Reply-To: <20220713131421.1527179-5-nuno.sa@analog.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jul 2022 12:33:04 +0200
Message-ID: <CACRpkdb7Sko3se4f8mYhyMxpr6rDYWO7_QnfizaHtBgLiVPFJA@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: gpio: add pull-disable flag
To:     =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc:     linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Frank Rowand <frowand.list@gmail.com>,
        Mika Westerberg <mika.westerberg@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 13, 2022 at 3:13 PM Nuno S=C3=A1 <nuno.sa@analog.com> wrote:

> This extends the flags that can be used in GPIO specifiers to indicate
> that no bias is intended in the pin.
>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
