Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D05B850A250
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:29:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389313AbiDUOa2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:30:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389310AbiDUOaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:30:20 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F8913EAA6
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:26 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id e189so5757339oia.8
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=wBmsFVzEWJfGZC3JHUok0FZewd7QYZ1lS1g/dkDHsM8=;
        b=m4nQDoRRgo1EGi3vObPuMc9P6s1GI4+JfoLzVLmBoQ/srs+fDrLvKMpL3JHhgvnlGW
         VuTI33JYOKagO7UWTrPdUycIUx+mWf+v68ytJUr6HT6LFGUxa3h3eXt/IYn+fAi3bDn7
         p4CVVNE7qw6d83k23OQCg+UGiQObstsWScPIEEnjNPv7DEqOVFP7lVF9A9PesIdLp592
         1s9hIhWsizRQRTK2PG+ywNwYAfo4D/kj7BiEx13JYCcLNnvC7JHLMvHW6iAP5m3Xxx2n
         Np7yJZAmX9MHURqzkxRZ3010V57ayDlVC9aJvw4f7UCkuGDX7NKWUR1JK5DE1NjztlUX
         LIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wBmsFVzEWJfGZC3JHUok0FZewd7QYZ1lS1g/dkDHsM8=;
        b=JGjFN2Qv9cYN7ykIHlePhH2lcEQINKjM/g/LMCN+5p05FngdyPkXAUPRHEJUpLgrjG
         3c33jylNJfolGSyHFm+d8V6NTLpxaOX1BURk7WN0917FN6Rn8OWrVB2ejNiLHirip+PY
         JaYXg/kdDPPAHv4Kjv0tkjY2xmG8rdmp9zHTb3yb/yZwIdWj7oV+wrKoFYHSk2GSaoM/
         SdqSK0vrsConqRgbMAjbv6NRonH6sMvlZFotXfrYh67ABC/lvMnSbl8Ula8gBOYzMS86
         UnAGVMJh9q3urCt6r77kPsKXDjyvL0gGV8UWlVUGISVAkucsH3mJ+fcZmiMXWR4k84Fd
         FR1w==
X-Gm-Message-State: AOAM532exX4KBmHOKZzYLKoimrlftTQWOrYU5gRkoMPng87OPSj8txor
        gChoqWvIyfE7IpXI7ErZlbzHvA==
X-Google-Smtp-Source: ABdhPJypE9dR4sblVTuBxzilcegBNIX9pacHy/1gcpgiP8HxFJHk6RD3TPfpYfzjrT/3t37cVEBphw==
X-Received: by 2002:a05:6808:1144:b0:2ec:b290:80e7 with SMTP id u4-20020a056808114400b002ecb29080e7mr22237oiu.26.1650551245383;
        Thu, 21 Apr 2022 07:27:25 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm4296295otu.73.2022.04.21.07.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:27:24 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v2] dt-bindings: soc: qcom,smp2p: convert to dtschema
Date:   Thu, 21 Apr 2022 09:27:01 -0500
Message-Id: <165055095990.2574292.17902569355793925836.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220411155528.502889-1-krzysztof.kozlowski@linaro.org>
References: <20220411155528.502889-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Apr 2022 17:55:28 +0200, Krzysztof Kozlowski wrote:
> Convert the Qualcomm Shared Memory Point 2 Point bindings to DT Schema.
> 
> Changes against original bindings: enforce only specific names of child
> nodes, instead of any names.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: qcom,smp2p: convert to dtschema
      commit: 5f9e72a4025b232ef0ddd5b6e4189e81091322fe

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
