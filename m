Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5136A689DD6
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 16:17:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234124AbjBCPNp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 10:13:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234126AbjBCPNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 10:13:30 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD15925970
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 07:11:24 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id r2so4916964wrv.7
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 07:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z00QFSg5fVcrySrHGuabqZsbM/ZJ+bdAmvNEl/IlbFE=;
        b=Kxrz9ZoDTD1ayWdVNyzujaJqvvx35vMnc5j0E0tdBlkp7LipJ3Xz+ERyGdS3ffAg56
         mOzKC7vcLq/sexz4/2Kq4b2ty70+lwdtS03f7e5xI2/tegdkX6k9e0yBPm5Ai3v1WLC3
         K++3vIptEJLNGzpDh75ILFwf64cv4E2W3nlocB8CCXE79Ghe+K6ucbargnWAqdPhTjke
         WF7KUhAlEx27n+SIoYE65ngEgjxQd0YmBCs0zZKawtZUv+DlSOy41/CMvdefOZOkODqK
         8xbU1OPKwtqLpppCPfZYv4JEKVwNC8lnljCeoXBvo8dtvzLe+a95j643B7IoL5ZdoJLm
         7Knw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z00QFSg5fVcrySrHGuabqZsbM/ZJ+bdAmvNEl/IlbFE=;
        b=v4+Z9EQyPapkAHMuzW25YimhisDCBVfr01SFlzT6S0e6iUq7kDKuuumRJYHqgu3hGn
         BO9E22RgSQ+yd9vSpehFXuH52Iyb95oohC529WdrBsNQiWvropCwfDLWuVbX8UkSLJEg
         kBF9IIvBdnisLZnaZg1WLuYI4hvMYI9U4k/EtIs2oftzf5Eh0bUsicSxD1nw+I6LCCBq
         bMr/prveoGJuKDqD6W8W0MQPZOZmBi7THSkd0F/yWAoJLnq/4SgywXKCJ0wa+51wIWYq
         SK0Hk7ccB6WQDdsk6rjzN/ZK/HOmVht03FyyXM6aGHqUdi2DeCmxabyBYBF7Uh2R7vWg
         cE7w==
X-Gm-Message-State: AO0yUKUHLuYRWKRtwq8cktDFwcTsKCwZ+F9VGFeHRiNoAo1TCsFyJIXW
        Ed2Jv2UB6mGKAZ5fo0QXPxxN8w==
X-Google-Smtp-Source: AK7set/nBo6gEk5xmjiB5XAsO7w9bdeq4Pg/vVtdVLcygItzNfhM73dKYxtfcLWILvzxHGBxdUmQmg==
X-Received: by 2002:a05:6000:1005:b0:2bf:b35d:2797 with SMTP id a5-20020a056000100500b002bfb35d2797mr8865341wrx.11.1675437031675;
        Fri, 03 Feb 2023 07:10:31 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b002bdf3809f59sm2202419wrt.38.2023.02.03.07.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 07:10:31 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        linux-samsung-soc@vger.kernel.org
Cc:     =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        phone-devel@vger.kernel.org, replicant@osuosl.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Henrik Grimler <henrik@grimler.se>
Subject: Re: (subset) [PATCH 2/8] dt-bindings: phy: samsung,dp-video-phy: deprecate syscon phandle
Date:   Fri,  3 Feb 2023 16:10:25 +0100
Message-Id: <167543702106.62628.8149272469590302211.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 27 Jan 2023 20:40:51 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> 

Applied, thanks!

[2/8] dt-bindings: phy: samsung,dp-video-phy: deprecate syscon phandle
      https://git.kernel.org/krzk/linux/c/0092b7ab96e77e6e315d0f5d3965608da32b3843

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
