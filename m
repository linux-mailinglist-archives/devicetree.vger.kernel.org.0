Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2C2655DE40
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232712AbiF0JQn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233843AbiF0JQ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:29 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CF466249
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:28 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id e2so12061286edv.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4yCp6aTXqUcXVsV0Np3Dwjlcr0jYRXR8pM5bj50a/ow=;
        b=A/AH+rqyBgloYrW3r5UfZDex8wxiYwvMlaBdRYE7DqkFvHJv1lz7pOR/uEcpmNDf9l
         zoKpIHNYtN3yFJ228uMZNAnlykPHvFa+gNngWSmW2m3U5tHGDjyFU4fCRgLVZzCX+7v7
         iR6YiT2ta/zahwUpgsriaTIUU8CowWzLoEqU2tRQxCpf26W4PdbMuwSkSY+07eDKgS1Y
         CFBaeepxTVduRlMysqV8xzkmf0E/oeTQ5QJ5f3Q3Kdyq/jkfsZTJsuuge1K+u3xnN+wo
         us/25Le2kjU2H/YI3g0DTEVpCEu+hydMJ5uDE9vI5MBrlPKjTo7RU45fA4UjsxPspsU3
         xwKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4yCp6aTXqUcXVsV0Np3Dwjlcr0jYRXR8pM5bj50a/ow=;
        b=PDWF4zzF8UZkmJ95Y5vyf1We9HqCY8Wt0mLsay/jGCifCtB8s9LDT7POr3RYt/n0Do
         lfqQ4qJ4E/G0mOHCxG+LS7GBFdIYCImm42tJqfaIWi4qRiHDUl93Qn2U25hn6zqvpoFh
         isUhIvgEuf+l03XS9+zB4G3PRS64mwYFmK7y1SWqUyWl/EoNT1E4XbjBDghnrg9opSV0
         ZnfRWb8qgcvSxMUX4xSg9/kveC/Mimbc8QCH2b4ShR73Q4s74xhy0AXBF7Rs/SZhrx9O
         Iq7+1XTknPI95xumGRS6WkztrLYqjZQg1Fa+/eyRzNSHe2ZjgED4va3Kklj82OAcJTXb
         VuDQ==
X-Gm-Message-State: AJIora+9ovHdQfcC3ppcPB95Qr25DGOXjATZMDBE2IoDYbSHazFRUQi6
        z7rQHuv3b2+S38wwqKg+W+hs4g==
X-Google-Smtp-Source: AGRyM1tGxNBHWOJWILt1IIISQWZABMsK2JgKp45IPF/kZntw7pMPmbIgZBPos3nCiw1YiVXFdIO6Nw==
X-Received: by 2002:a05:6402:2549:b0:437:788d:b363 with SMTP id l9-20020a056402254900b00437788db363mr10845669edb.406.1656321387840;
        Mon, 27 Jun 2022 02:16:27 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        nicolas.ferre@microchip.com, claudiu.beznea@microchip.com,
        linux-kernel@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        arm@kernel.org, alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        olof@lixom.net
Subject: Re: (subset) [PATCH v3 40/40] ARM: dts: at91: drop unneeded status from gpio-keys
Date:   Mon, 27 Jun 2022 11:16:00 +0200
Message-Id: <165632135506.81841.16359602083216967103.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005333.18491-40-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-40-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Jun 2022 17:53:33 -0700, Krzysztof Kozlowski wrote:
> Nodes do not need explicit status=okay.
> 
> 

Applied, thanks!

[40/40] ARM: dts: at91: drop unneeded status from gpio-keys
        https://git.kernel.org/krzk/linux/c/592feeea113553be142680a25a9c0850daae3567

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
