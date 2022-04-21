Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79F9450A245
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:27:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389290AbiDUOaR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:30:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389277AbiDUOaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:30:13 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3768A3EA8F
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:23 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id t6-20020a056830224600b00605491a5cd7so3361373otd.13
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=xI6ejrXLVmssCqEncIDoB7IblC4gDy//YC1MMp4Z9/k=;
        b=lYw7AecTMbnPyXI/AE44KOVz4feOyRbKAa8OV03vqHz/HXfqbtTEwVvJBWWQyr0rjG
         e0L4HRwtoI9Hwfe539jzCNOjsqimm84uSy4c9y0tddkHojDlF1qUDYtPZBqN9DkkEWa1
         zwIfD+hCTZ7r6faUua+N6TLHCyUlE5C9GPruMt5kKjPr1WNy1qjqW2ip9gBeny/R48Yx
         htU1LXtADu5gk11FsnTvsWQw6AYn4sGMtStzq9MgeAp/rLjENkgLFYaFTvKYMA+OxBZd
         5wwh5JLfADNdtqT39UftX7w23I5Q6cVzxGXhzCSSgQ7c3CeWGp0gsz/GK9YoHWC5kzSH
         DGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xI6ejrXLVmssCqEncIDoB7IblC4gDy//YC1MMp4Z9/k=;
        b=v3KB+RZAHRs7osiQbS2taMe6mMa16+TUw5mtwN5a/t1pNxexBqOjobXyUTQ1APafYL
         VyLXFxKphuPFMUoRaMHCdcX4mhwgB2GPhb1MqBBbeZ9D+lU6frdfuPbx6pz8sZW2AOkE
         imp6+X5NHmDTfh5P5L6xJ6JEIptp7tjGbVsb26FYhJs8QKZGyoRGGqNKrrRy5e8eSPgW
         Q84SM6uZt5qI1gdT5M5PNuua+6dHyf9Jyuix5hFvSMYAw0bFjLbK8grYSp8bK3Oqd8/O
         su5eAKoUSZMOWLp+r7pMgYx1tY452BTjPH2JWPKlkfhXrLMNDBGIOcEsxISj1kuzuHK/
         h1Ag==
X-Gm-Message-State: AOAM532W8budepzcIxZKeW9Wmm5tsQcNlu5n5Ut1zjlTV7op5Z4Nq4C/
        U3ZTOOkB2o4v2mEV6Xlh6mCZJw==
X-Google-Smtp-Source: ABdhPJw2SPeKK+qI1yrvIsSdMq0ARbhqjqXaShJYBSvBUfYOmKZ6OP878pN593/MF6YBy4qR1J8D+w==
X-Received: by 2002:a05:6830:18d:b0:605:4cfb:19cd with SMTP id q13-20020a056830018d00b006054cfb19cdmr7160776ota.177.1650551242369;
        Thu, 21 Apr 2022 07:27:22 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm4296295otu.73.2022.04.21.07.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:27:21 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vamsi krishna Lanka <quic_vamslank@quicinc.com>
Subject: Re: (subset) [PATCH 2/4] ARM: dts: qcom: sdx55: remove wrong unit address from RPMH RSC clocks
Date:   Thu, 21 Apr 2022 09:26:58 -0500
Message-Id: <165055095989.2574292.10959364254734483907.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220411085935.130072-2-krzysztof.kozlowski@linaro.org>
References: <20220411085935.130072-1-krzysztof.kozlowski@linaro.org> <20220411085935.130072-2-krzysztof.kozlowski@linaro.org>
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

On Mon, 11 Apr 2022 10:59:33 +0200, Krzysztof Kozlowski wrote:
> The clock controller of RPMH RSC does not have 'reg' property, so should
> not have unit address.
> 
> 

Applied, thanks!

[2/4] ARM: dts: qcom: sdx55: remove wrong unit address from RPMH RSC clocks
      commit: 97c246c825f73a018169834e56ffa9a89dea37a9

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
