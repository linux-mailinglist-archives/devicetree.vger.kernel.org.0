Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90D2E55D62C
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:16:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233497AbiF0JQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 05:16:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233830AbiF0JQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 05:16:26 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EA336140
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:23 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id ge10so17757251ejb.7
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 02:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=0MCWeM5fSAUN7KzvyvAXYoghiEdCZV4+8RpEEX0d71E=;
        b=z3N30FGmS7oL/0ACcSCAro2Pv18Kv+Up91/2Np/lvE6F7X4satw5OZOMRW+C6DLHqq
         eADjlRfKkj9pSr1PPNFt/nPV/hdq4v93If0blPDnunTyagAXZBiY/R/Zlp8YIpjx0Gbz
         Ei6K+VtZwgMqf7LsZaEVBGBZzUk2/a5WYrLbDhSWenxzb2iwJUfa+wqp7FqWmW8nCHS2
         Di+gln8dw3/CUDTLvywEhelQQG5Gj+/fRXMDCnWJzQQZgnjBhap2cAVxm+HzLVSmR0/E
         yb1b1EVQqMstPWdKg/qmUqwThB0bTJ4VzhhY11rG4/ekRo27tXhDOFGROgJhNis0wY+a
         b40g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0MCWeM5fSAUN7KzvyvAXYoghiEdCZV4+8RpEEX0d71E=;
        b=kDOEIui8JSoHxRJgVCB2LEruMXd+SlzuZNhUUGI/1+pcHApBCgkIXKzRSWbra8jhcj
         Hpc8KBaDZO5ToZ7QAcLjDw2TcepGuHcXjJple6hKZvbI7Hzw9wT1BNwIyvbCAQP1VNdv
         UGXJ3CIyMqY+FuJ2ckg4XrW/7h3m9QiE/apJvs54fdQqkHvlqvauTGL88yogZWicHJD4
         qgYNRS9QF9swykJ3JlUdDDAFD7khGOjYc+QcO68a/woTWsgy4qRqn9mvn8PEphhVIdf0
         2tZWrG/01Cw8uUXrFyUSKWsXMhJLPlJfd244NRk3P7T0pxgxRDM+kb6igVjlLhZF8XAW
         apzA==
X-Gm-Message-State: AJIora80sbVG+lnNDm/UUBMMd2WEeAm0uCww6690NM/8tJU+0EulX+w+
        HLE1e/mt98IHCBcwbwKKrhZFdQ==
X-Google-Smtp-Source: AGRyM1ts4Tg9UABy9P4W6KiJiUjWxMpM1KC7YAbt8WjmTehU/m5TJ7uzBLdW/oqZoMzbfMIpyC4pQg==
X-Received: by 2002:a17:907:3e94:b0:726:3b46:ba20 with SMTP id hs20-20020a1709073e9400b007263b46ba20mr11854749ejc.314.1656321381591;
        Mon, 27 Jun 2022 02:16:21 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gy10-20020a170906f24a00b006f3ef214e2csm4805395ejb.146.2022.06.27.02.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 02:16:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     soc@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, agross@kernel.org,
        krzysztof.kozlowski@linaro.org, Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        arm@kernel.org, robh+dt@kernel.org, olof@lixom.net,
        bjorn.andersson@linaro.org
Subject: Re: (subset) [PATCH v3 25/40] ARM: dts: qcom: align gpio-key node names with dtschema
Date:   Mon, 27 Jun 2022 11:15:55 +0200
Message-Id: <165632135505.81841.15098382258100030823.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005333.18491-25-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-25-krzysztof.kozlowski@linaro.org>
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

On Wed, 15 Jun 2022 17:53:18 -0700, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern
> (e.g. with key/button/switch).
> 
> 

Applied, thanks!

[25/40] ARM: dts: qcom: align gpio-key node names with dtschema
        https://git.kernel.org/krzk/linux/c/7ccf54f23a1453d07c67dc000d1ab1fb8b3581c6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
