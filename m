Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 668444F1B4A
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:19:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358505AbiDDVUA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:20:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379365AbiDDRDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 13:03:51 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEF0840A22
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 10:01:54 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id u9so6775064edd.11
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 10:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RGptGrNZelR9JKVq1BWhBKbQVjZd3/xj3o182YDaEYw=;
        b=wN0B3I2YMUijNaCS0FdGQMC+UAGANBqZaFbHGHxTQaPGpkyRHmL3zhQYem4MOz0rFv
         ufE7ADvxR67DZR2Kzcd+QT1fghipuHYwzts0PSbyQRrJ9SZdTDca6c12zhPhVe7X7CW4
         6zVCL7YnMdprtCIV6y01V0x+DVDFyERgRbTnBMqnnIdBd1sJE/xMvRX+vtkKu8pqZOKt
         r9tmsLb+opNydRn3mR/AfZlEipGmw1jew7HVS6Q0Q3vC4ZVELgQm3C2qrETBWVd0WUSS
         KiFJSY3g1viYg46qfo85XSEIppSh+7RjK8qxYIMelmBjKW4vwClQYT1BZcjNmwh8L3AS
         4yOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RGptGrNZelR9JKVq1BWhBKbQVjZd3/xj3o182YDaEYw=;
        b=mv7Dclmr6T5sGWJMTgny/keOGdQSD9k+ZWr8OhjW5n/DjYE02iu99kts6TBMJX8zyW
         THGIaQsXwFVBLhiOMwH7H732qIuwZrlPdMaXA0ZsrvGzaSHL1SaNq00VY/CQYvtJjYto
         yr563gfxW6pzL7okIaQMShI0clp0MktM6OX9004rEl/NYQVV0+rCaVZIOrysbxbVgC7G
         CYF8iaV/LoyMMgaHar981Xrf8YObeIAIKzYzwZCta+5rHItxYmisVEI7urpN36LNEamC
         RqMNEtS0ukLfkOrb9+t/0ZgMIl/+gGiSiWNPhQPgEajxryslPpkVp6cKC40reNlu8yse
         Bn+A==
X-Gm-Message-State: AOAM5307q4XarebEo7ksnrlJpuuTfBVKUzTeKbC8KZOYRn4YXGU7QB41
        G3pxgMVVs6rQHPKZc06jf8Mm8Q==
X-Google-Smtp-Source: ABdhPJwVUc2KM4C9VsdYwbL7pQninjHatsNdC1AkoZOIkqVtasAdFBDiVq03mTdn+fuTxNI032mzwQ==
X-Received: by 2002:a05:6402:40ce:b0:41a:6817:5b07 with SMTP id z14-20020a05640240ce00b0041a68175b07mr1159480edb.7.1649091713286;
        Mon, 04 Apr 2022 10:01:53 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c5-20020a170906d18500b006ce371f09d4sm4557770ejz.57.2022.04.04.10.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 10:01:52 -0700 (PDT)
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
Subject: Re: (subset) [PATCH 1/5] ARM: dts: exynos: align EHCI/OHCI nodes with dtschema on Exynos4
Date:   Mon,  4 Apr 2022 19:01:43 +0200
Message-Id: <164909169269.1688455.8158070235970871603.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
References: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
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

On Mon, 14 Mar 2022 19:19:44 +0100, Krzysztof Kozlowski wrote:
> The node names should be generic and USB DT schema expects "usb" names.
> 
> 

Applied, thanks!

[1/5] ARM: dts: exynos: align EHCI/OHCI nodes with dtschema on Exynos4
      commit: b412be7d3c0a248db0de4b7b53ee6ad44d49c71b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
