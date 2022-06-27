Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E40B555C701
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:53:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232617AbiF0JQ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232911AbiF0JQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:16 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 152113893
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:15 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id u15so17732802ejc.10
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=AJB4XMjx8N7mxha/eRfRwMbPoUvU5kmk+YfkrCxetGo=;
        b=eLz5pYGmqMUxRVWr3SvOwRgDbTVch01ias9Bqz6lN/Y8pYB7FCbUjuVOwW8X5qUpEu
         2cIkViktKJoZgpxnF5jBjqP1QVeM5gYWXcUsfbxBQg6may+cDxFbtWWASlmcTxT2N1TF
         P80Owzqoll3uyE4sijdCnT5i7qIdInDJi8XR2AYVfwnSLB7stPEKVoB87f8xDgl6Pk1v
         4ETkPhiU6hQMWnlpSneAtY5vfU/BykoVu2Ano7yz/2FM1dgg+tGuq6b94oqR4ohT9hgJ
         GslFvycltsZzwkKjGb8yyJJNB6sbnlPxffrHXpPFMwTheYirXi3My3zEvo1WhJmvsFaW
         5XOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AJB4XMjx8N7mxha/eRfRwMbPoUvU5kmk+YfkrCxetGo=;
        b=hCFHzyAD1+H587QI2RGdPLC899lk1zZO5P6ZC+IaIZxJ2gWLcWAvTKd2XuxTSbsTmq
         7Af8ksifJiZ6s7Z2cQEJQ9tOz3jZhG7VTJHYtU809LlpLw+44LDi7Sx2F8/B857HEJ6L
         RqvcCN3/+HmP76byLoAsNUHM2eQKt17DaAjIwvAiEddGhjYIZ52BOtiQ1/ict+2qe/tq
         I7JZEh9fUL497O9tEBTpx+5tIhp2fFyhMqpSOLR5T0IotySkVZXOFnjb3bviiJ8M3bzA
         WGT/rbczfvIXKmFnj1r96Ea0H50YKvwW8Uc5I18rCbJ9tjvmbLiIbWCtncwMOzgaYKbg
         aOSg==
X-Gm-Message-State: AJIora+mMHwhlqyM3hIPFnTRJ2AgRUtnbFW/w5L3q26ctdvXu9X8FHNO
        uBJRjILI97IIaNnwBLdQl5o2tpRoynqlEw==
X-Google-Smtp-Source: AGRyM1toh45jc3hLb+Tcn7tJOu1lC+sxr5r8HQC9Gpqg3nJSm1MWi8AXnpzO8kPqoU3vW2hRRHii5A==
X-Received: by 2002:a17:907:6ea8:b0:726:a8bb:5a3e with SMTP id sh40-20020a1709076ea800b00726a8bb5a3emr2801872ejc.753.1656321374723;
        Mon, 27 Jun 2022 02:16:14 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     gregory.clement@bootlin.com, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, andrew@lunn.ch,
        linux-kernel@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux@armlinux.org.uk, arm@kernel.org,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org, olof@lixom.net
Subject: Re: (subset) [PATCH v3 13/40] ARM: dts: marvell: align gpio-key node names with dtschema
Date:   Mon, 27 Jun 2022 11:15:49 +0200
Message-Id: <165632135505.81841.17659876356619463285.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005333.18491-13-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-13-krzysztof.kozlowski@linaro.org>
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

On Wed, 15 Jun 2022 17:53:06 -0700, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern
> (e.g. with key/button/switch).
> 
> 

Applied, thanks!

[13/40] ARM: dts: marvell: align gpio-key node names with dtschema
        https://git.kernel.org/krzk/linux/c/41340053cc72180e9095ca02418a5ab80794983c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
