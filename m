Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 976F755EF73
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 22:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229896AbiF1UXW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 16:23:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiF1UVt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 16:21:49 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8EA63D49D
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:38 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id t26-20020a9d775a000000b006168f7563daso10562168otl.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 13:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=drePDoRqqbzl6prpyVgk7AYX37yHicKnxyQR1OBjzI4=;
        b=moXgRC1ZCmtAk43r30IRkCVOlO3m0Lgmoyisbtq3SUSBCEMyi6gvW1oUVWJiXmUfIc
         6QtUcPpq/lDTeec6ygeym0stD3jSPRZ5J7RkMhqhLxOzTyTrw7AO0g7PH6An9eqMksyl
         Ydj0GgrPhK4gfvM0wtSqoErrAjAx9jofILHyuntEs1Xyk7g+n4956V8AvZCN8oVgwn7P
         qef3jWopwTNWnh6ho/WJuw93S9/3UdFe/rrZECqPDYCXAl49CjS5ZXRef73v7kqRB0/Q
         JH4vUc2cm6xEcnud8rqSLSIMWMiQ5f8wDRQXw76WEk/Z8lPqcjtgUXSmbI67xkH/X1DJ
         Nk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=drePDoRqqbzl6prpyVgk7AYX37yHicKnxyQR1OBjzI4=;
        b=KTEfgMsyCgc+V1gRU+teyrGIVvQH851KcjY6BWDnabmJMN8rJaYiVWeWHms2UH20EV
         Uf1pqbhQ05tUOEuWb9c+ogzBv7uU5q+JQPH4osmK5qyQ20oV0KH2v+nZWko/YMg0pW7j
         vYRQBO0JiXbxaie7dbC+/o3tmo5EtWDxVORNQk4iRYy1UblTYqC+nUcJoNe8JU03lNAA
         U+sV4ADwHCBI9wlPvWEqkVZ6nPZ86F+cacwgGFEFjusxDzeS0WIVl0C8oFrwi66rE/Oh
         LLmif3NlCprnJlr44IDD33+A6Gwy3uaGcK6MG7TTf6mZ878Wp4flwx1cp0zQjMDJUP8C
         qfjQ==
X-Gm-Message-State: AJIora+4K4PJgMemuUoLhJz0kCQBm4HTdaXUq7VdfMJpwl2cSvv5e4tD
        5+6tcr2/aP3ubuhBn4dnvArB0A==
X-Google-Smtp-Source: AGRyM1tu7bDrRegeRjhgYkK5mcokV3KE8Y2lqVgXT/4kP1CoErcxfekA6u2mEhkTco3Or0B5ePUSkg==
X-Received: by 2002:a9d:6750:0:b0:616:8fd5:bfdc with SMTP id w16-20020a9d6750000000b006168fd5bfdcmr9811390otm.322.1656447578602;
        Tue, 28 Jun 2022 13:19:38 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a12-20020a056870d60c00b000f30837129esm9536923oaq.55.2022.06.28.13.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 13:19:37 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kaushal Kumar <quic_kaushalk@quicinc.com>,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        agross@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        manivannan.sadhasivam@linaro.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/4] Add QPIC BAM and QPIC NAND devicetree support for SDX65
Date:   Tue, 28 Jun 2022 15:19:07 -0500
Message-Id: <165644753307.10525.12384572322800872400.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1651511286-18690-1-git-send-email-quic_kaushalk@quicinc.com>
References: <1651511286-18690-1-git-send-email-quic_kaushalk@quicinc.com>
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

On Mon, 2 May 2022 10:08:02 -0700, Kaushal Kumar wrote:
> This series adds and enables devicetree nodes for QPIC BAM
> and QPIC NAND for Qualcomm SDX65 platform.
> 
> Changes since v2:
>  - Modify status as "okay" for the nodes added for sdx65-mtp.
> 
> Changes since v1:
>  - Sort the nodes added for sdx65-mtp in alphabetical order.
>  - Rebased on top of 5.18-rc5.
> 
> [...]

Applied, thanks!

[1/4] ARM: dts: qcom: sdx65: Add QPIC BAM support
      commit: ab11b74d87ddadb1e6e6d8dc36f3145a26158ef2
[2/4] ARM: dts: qcom: sdx65: Add QPIC NAND support
      commit: 0ec15b6f7621c2e5ded3d3d1a67361da1895c26b
[3/4] ARM: dts: qcom: sdx65-mtp: Enable QPIC BAM support
      commit: eae61fddd64861fc496a7786b02449abe8188145
[4/4] ARM: dts: qcom: sdx65-mtp: Enable QPIC NAND support
      commit: 59e73f67e14b95eddbbff2f009c98a55cef47f8a

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
