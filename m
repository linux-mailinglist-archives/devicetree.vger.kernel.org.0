Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18A024F1A84
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379019AbiDDVSe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:18:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379370AbiDDRDy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 13:03:54 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BF7C40A22
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 10:01:57 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id d10so7093456edj.0
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 10:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v5Fmb4acPC59cWZXdkuaYjyiaNIFHAYaKvTirVUtyb4=;
        b=R8hcC66HpgMWLqprAc3n6eEdxFsgMtSPa37JJtF4M0LOQQxhDV5/c47atRSa8zHosK
         Kj07u92mYfjSCKDxQZFzeMjmsmm7NhVNpY5mDun8DDsQF4JXKdDOelLXIdq98qZ7/IL9
         g6bE11BZY9RBWmwwWMvikscr8Amc9ceyc7EEEEpaUrDTePh7BARB0NmuQqIQqVV60bO3
         GiPI6qxMRN40VVREzeXloXjPRaeTBLUNufaBhPEFyffYoIJIeH+L1HvOF/Xht0HgJ/ap
         61sRx4y6JRk8DqFdDNReLUgtRu17YVLKHYcC9EzLe+eUFkzUW2EckiHPNdxFgYDlWW5D
         xLWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v5Fmb4acPC59cWZXdkuaYjyiaNIFHAYaKvTirVUtyb4=;
        b=2iymcCq+rsrUZRzH4d1JV6bsQb4jmlmk4b/UIjMD/ZXs/xhJZtehq7HVns6A7rf2KO
         GBqpZQTt+M9Kk+8dgAwLcP55/v1jwEVdsZIFwwPFykzXkpuATBW6uKBH+6SA4OpBDvHb
         Sh1y02KkE8sJ5AW5evXB3GJGUYw6UuSTYJ4DcC3Cv7ZywLj5yfpHuZUz3Gb/4dsDaPv+
         z37x5FXZkReSQrQItptTEpuvV5H+ef4pGL4GOITUxpMha8qyuVkpvYMgfwP1PNDB1F9z
         CRiQ2Fa8TZB8HrsC6TqdHDXpX0Lxda4FuXjwjVpUIZs2CkiXNZ37qFXFRKX0DButZD0R
         9sbA==
X-Gm-Message-State: AOAM5321NR4Jdzii1QNt2e/RjsQq29IZAqs9dtGOnH+UVvuRlJfrL8ev
        CKmm65czSgqjXxdHQys1zhpAsw==
X-Google-Smtp-Source: ABdhPJxw9oxoZGvi5JcalnhggHj8GMN53jspFBnnKS9BPbdilK/xZWUSjz+E8N965+hn6nwIGmMlgA==
X-Received: by 2002:a05:6402:2318:b0:413:7645:fa51 with SMTP id l24-20020a056402231800b004137645fa51mr1136945eda.201.1649091716073;
        Mon, 04 Apr 2022 10:01:56 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c5-20020a170906d18500b006ce371f09d4sm4557770ejz.57.2022.04.04.10.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 10:01:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 2/5] ARM: dts: s5pv210: align EHCI/OHCI nodes with dtschema
Date:   Mon,  4 Apr 2022 19:01:45 +0200
Message-Id: <164909169269.1688455.16830992649596254488.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220314181948.246434-2-krzysztof.kozlowski@canonical.com>
References: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com> <20220314181948.246434-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Mar 2022 19:19:45 +0100, Krzysztof Kozlowski wrote:
> The node names should be generic and USB DT schema expects "usb" names.
> 
> 

Applied, thanks!

[2/5] ARM: dts: s5pv210: align EHCI/OHCI nodes with dtschema
      commit: ab92681ca16194c966844ed4dd2c336705e0c727

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
