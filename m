Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A26495F3E7F
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 10:37:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbiJDIhu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 04:37:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbiJDIhr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 04:37:47 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28B8A3A4B3
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 01:37:45 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id lt21so2015489ejb.0
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 01:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ThMntxlZppC84O+euxA4gZxiDNeTMFwKEQEGon7lVMM=;
        b=ZySceW4Li9TnmqGFLeuD55ZYytpi0m7IVagTsKxhEo2chhtGAI4pAT3psweDlyou4H
         AeRs9Chjr8RSdNqIIQFpYBhjvThI5qZwxTvm6M4Hq2yfxxj7Nfsj+e3tW8XcQnGDvkcn
         WSXby8/jbNIFBC+TMJ8xpx8+BGWShWPNp6xg1vpMryIyMLSAvdaJkuqLMxzUSstz6tyz
         b2RHpTQsQX+JbZl//vLi2FHsLQ62L/PzryAI3ibCVR0Tt8BdpzgCut4FyVxWsCjoVFXM
         yPXI+YDC0/aWoGlfxCTPB71UTqBo9X9UkpD6y65zlYUUrqlTbLV8X6h+zLRQDu0by2Sv
         1IOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ThMntxlZppC84O+euxA4gZxiDNeTMFwKEQEGon7lVMM=;
        b=tvmaxSNxsO3UqaoMiuhUUsiSQ6ZnczU0rZijaSi4TNsB6jqGUjB1bW513kry2/pwpX
         Ck9l4a56Wl5dlDGQWS5RrW1iPNppNIpGUkupSUDz3t9MJjKGFqZlOLe0nL2Ymb3mae+D
         4cd+nHx5bCR/vd4mrl8JKnLVRGsSr3Cy8r9SQ/HLy4UYN5+qGQoQR3aQruDB7nDlE0zg
         IH+l8x1GXGwC/paxY9CotBcJOBVLldODVRkopJUvavGVQ3+pSjZBzoEBcgAdWh/9DnH9
         AwfQxw2Zn756Cf5VemEdOCKRWkfZtfD5iaeuGwBhDNpyTqgfO9ygCx7YXPueae3e8EJz
         KNSg==
X-Gm-Message-State: ACrzQf22CxndnCX0HgqaRgF1OdhCbdA2x/w57d6nb1abB2xWaMKzfM7a
        M3UuJ8mJZzSurVNl6Vk82bLca2kpZZFDmQEAfQRKOA==
X-Google-Smtp-Source: AMsMyM7V85zjAFnelVm/Nxv7BMiXqOOKajfzBkVDFOrfn7T3xv44/Rtfb/yh+SIcsFZKWmW01f0Om4dqeaEQrijhz1Q=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr18596049ejs.190.1664872663739; Tue, 04
 Oct 2022 01:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220926204724.381760-1-marex@denx.de>
In-Reply-To: <20220926204724.381760-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 10:37:31 +0200
Message-ID: <CACRpkdbpuQY+yjHuNiFuAJogTzE1QAAgmHfGBLyL4gCsd9Wprw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: st,stm32: Document gpio-line-names
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 26, 2022 at 10:47 PM Marek Vasut <marex@denx.de> wrote:

> Document gpio-line-names property as valid property.
> This fixes dtbs_check warnings when building current Linux DTs:
>
> "
> arch/arm/boot/dts/stm32mp153c-dhcom-drc02.dtb: pinctrl@50002000: gpio@50009000: 'gpio-line-names' does not match any of the regexes: 'pinctrl-[0-9]+'
> "
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Patch applied.

Yours,
Linus Walleij
