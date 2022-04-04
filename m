Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25AEB4F1B4D
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:19:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379602AbiDDVUD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:20:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379998AbiDDSgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 14:36:52 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA43531376
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 11:34:55 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id p8so9767700pfh.8
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 11:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6U9Lqjha6mYstjugK1hn3v0/7h5kGP7YesSiD4CbmQM=;
        b=VsNyMGpHMg60AisXQQzVn5eHAcMjnMfQYotNEzZPUVNAtoLeTm1PHIkFuPG7Dj6fnp
         QOWYSf5AylPwqB1XR5RyokrRR0WlWPzmZZiv5bvz8jW/twjku/TI6/9F2OlS9A0kTGMj
         vMQ1Z8y2ofjGxNJcuWqjIzuBb/M0skzGBeF1NyQDatuA6joswBeVla+0B+qzO9vMl19A
         2WgN+ZFuASBn2uD3Y8owX3vFk2/3sU/OOsA0NM6G1I2kmo7KrFotQ0+yFTS66Cj6se+s
         +EI2nrFrdMUbqC0moeRZP7K7nnbqlpLGrNeRwRKyRD2U33cdWu880NGbBU4PawdKH9eH
         svHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6U9Lqjha6mYstjugK1hn3v0/7h5kGP7YesSiD4CbmQM=;
        b=3tqNCl03hm0bMC7/Qcbappm4A1Vym5T8wIRq9bknFCOry6Zi61ljRLwhA2XKie0AgP
         Jy3oLiGulkzYbq3Bz2sdKIcYTxBfIyh3QW4AqGCH7tlQDoTeNlSCv9nDPNkDBnQ3Oj09
         dIbQjSkDU7xv7IoVYLR++0XvM6+wyO6JoTNYxZtrAy0LI/hCWETMVnalgXFQO1JriwLR
         w12yVno5ifVyPNCvUu9DsCZisyXD3xm84R1onzNb4EeAnK2Rc2t+eP0Mr+RCBnZ479uw
         s+6CiRr0DTp7+k/cq33GMvCovIOjz1DiKAGTzarqOl1S253kkHWQHEyn4WBQ51gcnfnR
         XQhg==
X-Gm-Message-State: AOAM532/Zc/n73h2iIBynOOJHADiGjLGcJAM3M4rd551TrDSWkzCd05g
        rYwkMHO3u+UcrTrqKHCtZqM=
X-Google-Smtp-Source: ABdhPJz/okRy1nlEzIpXxjafbE4PSCp+bvTjwPJ+C44K6KPuh4OefF9b+C9OhbCHZ0cPZTOdhJjFvA==
X-Received: by 2002:a05:6a00:2450:b0:4f7:bf07:c063 with SMTP id d16-20020a056a00245000b004f7bf07c063mr853851pfj.51.1649097295217;
        Mon, 04 Apr 2022 11:34:55 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id j18-20020a633c12000000b0038204629cc9sm10896168pga.10.2022.04.04.11.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 11:34:54 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Update pin controller node name
Date:   Mon,  4 Apr 2022 11:34:52 -0700
Message-Id: <20220404183452.2316519-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220330120527.5242-1-zajec5@gmail.com>
References: <20220330120527.5242-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 30 Mar 2022 14:05:27 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes:
> arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: cru-bus@100: 'pin-controller@1c0' does not match any of the regexes: '^clock-controller@[a-f0-9]+$', '^phy@[a-f0-9]+$', '^pinctrl@[a-f0-9]+$', '^syscon@[a-f0-9]+$', '^thermal@[a-f0-9]+$'
>         From schema: Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: pin-controller@1c0: $nodename:0: 'pin-controller@1c0' does not match '^(pinctrl|pinmux)(@[0-9a-f]+)?$'
>         From schema: Documentation/devicetree/bindings/pinctrl/brcm,ns-pinmux.yaml
> 
> Ref: e7391b021e3f ("dt-bindings: mfd: brcm,cru: Rename pinctrl node")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
