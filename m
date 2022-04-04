Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18ED74F1ADA
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:17:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240540AbiDDVTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:19:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379424AbiDDRKW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 13:10:22 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB1A140A22
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 10:08:25 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a6so10417880ejk.0
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 10:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gE+w/j83z+j5pFEpkVfRt65zDyjwfQWBfmU3yi7pNz4=;
        b=Z5ajhx0rAWO0B+WgSD8sPn72nbeudyCmwS5vob1s31OX28awvdfYeRSUPWxQ83CYqN
         hypRsAR6KiJfB/q/j8/zF3XgpOot7kIuVUpOVaos4vDb3/Hj0NKYvIxsexoTTbAnn0NP
         n5dFL7RqPfSwOOzeLar2e31X+N6WjT2x+Jb+pEYdCSwLxFNQAS/qhYlgfy8wFsRMnVR7
         YOEcS69a37c86FD4YIPkA8JVYdhNMcrU8OhTtspKIRAJy05kRQeWe8wPYMXb9+GxLOuY
         J4DRavI2x8ieDtRP6MOIdyyB3+GBSVET6KMXhaJZw9fAxWPz82aJlC8OGaD6VK8+DYpX
         onhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gE+w/j83z+j5pFEpkVfRt65zDyjwfQWBfmU3yi7pNz4=;
        b=PAzo1Jl/0t6wgnuGWPRDZz7a8MfTrAN9cjJ35SuhUGZJ2ty/AHl5if/Z79Ld1W/ELQ
         s+FqEENwtP3PhLDZ1aVR1NuSDl0eNjWl5ly9EbskZZqzMP7xvS+e7EJTgyJjl8u7wYbZ
         8hwJYLqyqWpDBDjJ/rOhUtJwqnhAhUcA7IyA8aqlD7RsBS9NG9tJJbJBVfS8tOO3yDFA
         S4sDsldSeLZMHlhrI14YOL0NxVOWk67d/Nv9E2XMDv+CycXeo9o0+uEKZV22g+xX6Vgz
         GJb/06qNqyWAkl2t9Sbgw+zFhCv4l587sbSpbMjiFp66ns6l7OZzcl4DB/MmUu35PB+V
         RcmQ==
X-Gm-Message-State: AOAM532qTvlQ7pHO9kDlEprpE0QNiQJb88hDRm+7iWgoYlI+ARhUMc05
        8/LhhFULrqFMIKfyWPPbegFkew==
X-Google-Smtp-Source: ABdhPJyIutBGaqFTl0dav6T/02/aRGrIX5ffFX87pkIS7/d7sWASJJUMEmE2oijmlP3Ba3tWeflKPA==
X-Received: by 2002:a17:906:c111:b0:6db:cf0e:3146 with SMTP id do17-20020a170906c11100b006dbcf0e3146mr1108050ejc.280.1649092104286;
        Mon, 04 Apr 2022 10:08:24 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id u25-20020a170906b11900b006e08588afedsm4565827ejy.132.2022.04.04.10.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 10:08:23 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     dinguyen@kernel.org, s.hauer@pengutronix.de,
        Sherry Sun <sherry.sun@nxp.com>, michal.simek@xilinx.com,
        shawnguo@kernel.org, bp@suse.de, robh+dt@kernel.org,
        manish.narani@xilinx.com, krzk+dt@kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH V2 1/2] dt-bindings: memory: snps,ddrc-3.80a compatible also need interrupts
Date:   Mon,  4 Apr 2022 19:08:17 +0200
Message-Id: <164909209237.1690243.4980500786689807223.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220321075131.17811-2-sherry.sun@nxp.com>
References: <20220321075131.17811-1-sherry.sun@nxp.com> <20220321075131.17811-2-sherry.sun@nxp.com>
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

On Mon, 21 Mar 2022 15:51:30 +0800, Sherry Sun wrote:
> For the snps,ddrc-3.80a compatible, the interrupts property is also
> required, also order the compatibles by name (s goes before x).
> 
> 

Applied, thanks!

[1/2] dt-bindings: memory: snps,ddrc-3.80a compatible also need interrupts
      commit: 4f9f45d0eb0e7d449bc9294459df79b9c66edfac

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
