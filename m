Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90FFE5524D5
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 21:53:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbiFTTw7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 15:52:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344022AbiFTTww (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 15:52:52 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C8A4B3C
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 12:52:50 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id n1so15800453wrg.12
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 12:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=jq8IlzmRmUKlqv3On/oY1AUojxYr/sDjB5anz61AADg=;
        b=BFMp9cD/zJgwL7A4Gi2zq2+syrCaj79o2kHHXPppdxVFrjwtVwLBYpUIDHRY9a26gL
         s1Feayiw4pBUYQ4FYhfHO5CdknDD+GXwv9ka04CjqdQMwf0vWl+GJdgALEa8a3Ga7dd/
         le3DpXKcQEiR1UvDGX2k3gXztiMotyh4G1Njku9pVrPab4aOx/YOnMWZCvnl+uDd4+Rk
         b/3VHTUWZHW5sX4LtW/816+QZQUlZVjC/MYeLLaDSj49J0+TBTVfQnYNPqgfq/96Gqbc
         cB7Gc1s57/b2BFq43tGo3oBWLmMNuPsqvYd0IY5jrJEcIpZBzMpUor866y2vaBqhEtwf
         Xw5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jq8IlzmRmUKlqv3On/oY1AUojxYr/sDjB5anz61AADg=;
        b=PplZlnczSGafuHZi0GnjyUF/PM6HLdsZqsiYoQ4qVhJW+FhNnOCNLFqECeI27NantP
         5P7jAOcHP69Fng1s4zGQYFJ0FdHBjDSOeyAZWGR5I3VVlDfsYlKWA37YvM7CbKbeWJxg
         diMPIubpe2Et+CcUDivOrKATykhw8vee2te3sgAVKv6qgLWZtswMshQ1tuTtBgH67Hxr
         vKzXM547czLo9rdNnrstBc4GXuQpupUZLGxkD3ZgUWxpH6jkMhdbX8WaQCP4plX36Z51
         aLTTimVSpl8G/qGpYNUy/aE27bt1QzWqYT8eu23qL0BDPcgkKDq2AMlDu+Cp3nqTj/3J
         ZPrg==
X-Gm-Message-State: AJIora+loYSm4mDZoeI/HDQ6HuhIXD0t7CP2W/461CK46n8PptkaF1bY
        qPkaLip2WdqF50o4HIqZjEg6kQ==
X-Google-Smtp-Source: AGRyM1ub028C5N2cNunBKzdOO6smSIhTL/+9sSH1BIJD/KahEQc2jTp8WwsgKdqKKhpYSvmh2TlDGA==
X-Received: by 2002:a5d:598e:0:b0:218:525b:4743 with SMTP id n14-20020a5d598e000000b00218525b4743mr24392302wri.708.1655754768944;
        Mon, 20 Jun 2022 12:52:48 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id j19-20020a05600c1c1300b0039c5645c60fsm28023077wms.3.2022.06.20.12.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 12:52:48 -0700 (PDT)
Date:   Mon, 20 Jun 2022 21:52:44 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, m.reichl@fivetechno.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        stable@kernel.org
Subject: Re: [PATCH] arm64: rockchip: rk3399-roc-pc: prevent fusb302 powering
 off the board during boot
Message-ID: <YrDQDLOXQKtPVgzU@Red>
References: <20220620110407.2393644-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220620110407.2393644-1-clabbe@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Mon, Jun 20, 2022 at 11:04:07AM +0000, Corentin Labbe a écrit :
> The rk3399-roc-pc never finish booting because it is powered off when probing
> fusb302.
> 
> The type c port is disabled because not present in DT as can seen in dmesg:
> OF: graph: no port node found in /i2c@ff3d0000/usb-typec@22
> 
> So adding the port in DT (as needed by the device tree schema of
> fusb302), permits the board to survive and finish booting.
> 
> CC: stable@kernel.org # 5.10+
> Fixes: 8bb878cf20ae ("arm64: dts: rockchip: add support for ROC-RK3399-PC board")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> This patch is tested on 5.10.123, 5.15.48 and next-20220614
> 

Please ignore this for now, it fixes the issue but
[   31.653778] typec_fusb302 7-0022: cannot register tcpm port, ret=-22
[   31.659415] typec_fusb302: probe of 7-0022 failed with error -22

So while having a board which boot fine is better, having everything well probed will be better.

For fixing the probe error, adding the following is sufficiant:
@@ -558,6 +559,9 @@ connector {
                        data-role = "host";
                        label = "USB-C";
                        power-role = "dual";
+                       op-sink-microwatt = <1000000>;
+                       sink-pdos = <PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
+                       source-pdos = <PDO_FIXED(5000, 1400, PDO_FIXED_USB_COMM)>;
 
                        ports {
                                #address-cells = <1>;
But this bring the initial issue, the board is still dont booting...
