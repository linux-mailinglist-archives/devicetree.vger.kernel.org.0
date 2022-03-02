Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33A3F4CAC90
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 18:54:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238204AbiCBRyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 12:54:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233784AbiCBRyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 12:54:49 -0500
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4D5E9D0D6
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 09:54:05 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id j2so2424632oie.7
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 09:54:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MEa4+AitEkUo+ZXbXWDE7cqp60A7nDmM+8ONuWSuF+M=;
        b=n5B1WkH50jy3NPSXPN1lblqNIRJVrgW3N7dKaZj36mIusPze/o+mrxv9a+w2Cnk6kD
         i0pcBx4ZCeBgESegA1o+6m+61jWnhuWiRe9+TngOmuPnhXpv4MUjqVTmCnpoVwDj4W3C
         MuTL+Jf5bpglkvyVTSo9pd8c1h8l+Y9MaPBuKjXeEF7EpCq1IWEUDbEt9fSKAups5Jyj
         KA3SL/3NLRs1B4EauWb/bZfNVZvq/F03q1j2If6GEe7nYO4fwOowsqpw4zkZ/94urmEY
         IuW26JWU/XRLLX2Q2opThj3FmGYzdw+0k/CTn3S6vBlfOva9LqFWt43xaBlNghg4I2vK
         A++A==
X-Gm-Message-State: AOAM531oPKj6+j/a8WpR194oW3UmH0abDa+5uJVydmusnfYoKVMjotiV
        9VJiOoQQRVWvtcMCR5GV1g==
X-Google-Smtp-Source: ABdhPJwPpntbUJaBIXkJvbsIIMxK880e0ZksZypP3v1aQsNnVvZiD9H3/kVjNqCnP2kBEW1y3SNjLQ==
X-Received: by 2002:a05:6808:bd2:b0:2d7:9ab4:a0a9 with SMTP id o18-20020a0568080bd200b002d79ab4a0a9mr897512oik.81.1646243645201;
        Wed, 02 Mar 2022 09:54:05 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id s29-20020a0568301c7d00b005af050c12c9sm7932222otg.72.2022.03.02.09.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 09:54:04 -0800 (PST)
Received: (nullmailer pid 3959165 invoked by uid 1000);
        Wed, 02 Mar 2022 17:54:03 -0000
Date:   Wed, 2 Mar 2022 11:54:03 -0600
From:   Rob Herring <robh@kernel.org>
To:     Shunzhou Jiang <shunzhou.jiang@amlogic.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH V5 1/2] dt-bindings: power: add Amlogic s4 power domains
 bindings
Message-ID: <Yh+vOyKUsxwic9oq@robh.at.kernel.org>
References: <20220302065540.16031-1-shunzhou.jiang@amlogic.com>
 <20220302065540.16031-2-shunzhou.jiang@amlogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220302065540.16031-2-shunzhou.jiang@amlogic.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 02, 2022 at 02:55:39PM +0800, Shunzhou Jiang wrote:
> Add the bindings for the Amlogic Secure power domains, controlling the
> secure power domains.
> 
> The bindings targets the Amlogic s4, in which the power domains registers
> are in secure world.
> 
> Signed-off-by: Shunzhou Jiang <shunzhou.jiang@amlogic.com>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> V1->V2: fix spelling error, patchset use cover-letter
> V2->V3: add power domain always on reason
> V3->V4: clear vpu and usb power domaon always on
> V4->V5: add reviewed owner in patchset
> ---
>  .../power/amlogic,meson-sec-pwrc.yaml         |  3 ++-
>  include/dt-bindings/power/meson-s4-power.h    | 19 +++++++++++++++++++
>  2 files changed, 21 insertions(+), 1 deletion(-)
>  create mode 100644 include/dt-bindings/power/meson-s4-power.h

Acked-by: Rob Herring <robh@kernel.org>
