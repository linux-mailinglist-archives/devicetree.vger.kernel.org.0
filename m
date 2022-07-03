Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6123C564472
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232707AbiGCD7Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:59:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231547AbiGCD6e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:58:34 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A3DBC91
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:40 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id h65so8910735oia.11
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=tKpzejLshB+azhLe9/Pn6K4qRUtHqwv08GiuhB13awQ=;
        b=Vlm2UvMOBU6j+F4uA1uua7xdjcKXAJS16yiVDzjz0fk/TohHw1n3ZuLBFOOgXJnjdL
         cC1/iYipDv61kk1Wx2KIkpaJbPD5MjbHRvNKB3RbT1drthzxeIctUH/pmq/78cCI1G/o
         tezcGUX8sEVS8O7jWRND0vOopeLMPVNIYzKslhsAgScNX65A16mA7o+LnjiMv1T0NoLd
         tSO22rYNQsxjV7ggwlMj+5DTGQIL+LLHdIBKM8CIU1WF+DGZA9Rb6fyIy6dQHFFIrYtw
         4cVpeoZfBJb1BUnGVXxmzqJq6rbq5dM4XK6dHfdm/ja1FPH8buuNbkT+OZLY1/OkBmJG
         Flig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tKpzejLshB+azhLe9/Pn6K4qRUtHqwv08GiuhB13awQ=;
        b=UvSwFppdGXkU19AfP0ZhE3s41jRIPEZ4S+NEKV22a55gZeYtv4lPXMRE88De95egQX
         OHQ9Crh6+f4aSlQ7MxtznLbWbhG4xttVkgyTkc94AzKCqHu1v9p0/7VMdv7H5iilqlwL
         WtGi97/2BKfAnMKaq4xRkPF5vINHGTJzW1mLv+JrpT2vmwILmkKn6y0ztHSSEbSc8QdV
         TxDBgDtiUnMVsNE1PbZt7MtA5SG9DICDzelc55JruU9zybD5jJKBL/zSWNFF9Hi93aws
         Y1VEJqBOV7WSyObw1Pk7uC2wykUA2UXQS8HZRnCj8Wi0sKfpfaZM22oTh+6FWEXrHWP9
         XOSQ==
X-Gm-Message-State: AJIora9KiDKoF0MnGX58voWAkSnehEp7CxlsqqzK5UioLRbXA2LtjD10
        qJzIeMJIqlCDnqA+iNL7duQcGQ==
X-Google-Smtp-Source: AGRyM1sZ9cAQ+ayswgOKAMc3SmLTVs5cQB5R9X2D8VC6DbfvRolsnT9XWG5MpLPLW7XQRPj01oOHcw==
X-Received: by 2002:a05:6808:a89:b0:337:b33f:90d7 with SMTP id q9-20020a0568080a8900b00337b33f90d7mr1577812oij.262.1656820656702;
        Sat, 02 Jul 2022 20:57:36 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:36 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Olof Johansson <olof@lixom.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        soc@kernel.org, arm@kernel.org, Arnd Bergmann <arnd@arndb.de>
Subject: Re: (subset) [PATCH v3 23/40] arm64: dts: qcom: sdm630-sony-xperia-nile: drop unneeded status from gpio-keys
Date:   Sat,  2 Jul 2022 22:56:30 -0500
Message-Id: <165682055968.445910.692492980359330400.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220616005333.18491-23-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org> <20220616005333.18491-23-krzysztof.kozlowski@linaro.org>
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

On Wed, 15 Jun 2022 17:53:16 -0700, Krzysztof Kozlowski wrote:
> Nodes do not need explicit status=okay.
> 
> 

Applied, thanks!

[23/40] arm64: dts: qcom: sdm630-sony-xperia-nile: drop unneeded status from gpio-keys
        commit: 9d8840f6ee426b6dfcb65bdf39e2898652e2b1e5

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
