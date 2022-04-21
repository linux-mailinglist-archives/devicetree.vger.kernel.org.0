Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE67B50A253
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:29:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389399AbiDUOaj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:30:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389246AbiDUOaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:30:10 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3F0D3EAB7
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:18 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-e5e8523fcbso5528416fac.10
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/TuynhLBd4hkuV3ZFwLhZTb0gzTnv4eNA9CpTr3sD1w=;
        b=ywdvxnhECr6gwJ+HSdfyoLZEnM5WTuw6C2wk8Z2NwuyD6YGn3Bc5xwVOW8Eyj+/AXH
         Hv0Sdfleu0h9Af0055mg0cdasONNlZQF6evuQoQANkdSJ089twg1o/lc0vS90I9SN7aZ
         poASlwHzaxoFdNE+UwO7CwTUjAghPy9zj46gqatj1SfyKu2NWmg+tD7s/X4Zd5yIbbiP
         ywKMwr8uwoZ2RXG2mKMuXv0clDVTHEQM2mfbzL+pKj6giqANgfqmdwV2o3oPLK1VZY9G
         9+mNbOQ1xDTnhmtBZ2OSZZAOHihLyiSnmTEudGt0gIaWxcB/9JL/cWQWVACd2cWYvTAI
         ixWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/TuynhLBd4hkuV3ZFwLhZTb0gzTnv4eNA9CpTr3sD1w=;
        b=vSEKEJ1qjg8zwq7J98ayp/rcJ20qisqWHUXXz36Z32d9QkU+ItyMwqxwwzD/aOjdvN
         j9hdLr2Itwh1OBUKONIhfe6X3x/Zethj2m4nBmc3Q9Nw5aJvCsqvO/y+wygLAz+cUFzx
         2eZ343QNjmvTXMBc41YrXYOgva5vtzez/COval42YpHN9Lmkq78DX6ypT0f0jtJj8YlG
         vLF3p2zgQpLiX8Z+LuOrNjgp5S6YjhKOBxqqgUhdZZ+KFet8dd9bGBqzooWbrMWI7gn+
         /OMC7NNnNjHRpdmGLBnc8GwlPFzkFGD9l6wxdFIc9zSYP/wONPHXYWvaYMKBoQhqVn1s
         Z7og==
X-Gm-Message-State: AOAM531ANLXD8xsc4zUIw+bsOxGbdhSGVO9kjxZK+qTQqPyOh3PjucjY
        LPYfQIRg1jL/5Ytnwv3DkAvYpQ==
X-Google-Smtp-Source: ABdhPJyxQofJs0sH3GdGFZVO61QeU0jj5L9/SkhYyJnDBhQjek4QktPfPirPMtw/qatpn5DFgpNgFQ==
X-Received: by 2002:a05:6870:c393:b0:e2:ae03:70ff with SMTP id g19-20020a056870c39300b000e2ae0370ffmr3620690oao.231.1650551238272;
        Thu, 21 Apr 2022 07:27:18 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm4296295otu.73.2022.04.21.07.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:27:17 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: (subset) [PATCH 1/2] arm64: dts: qcom: msm8994: override nodes by label
Date:   Thu, 21 Apr 2022 09:26:55 -0500
Message-Id: <165055095990.2574292.11389273916823055515.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220402192859.154977-1-krzysztof.kozlowski@linaro.org>
References: <20220402192859.154977-1-krzysztof.kozlowski@linaro.org>
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

On Sat, 2 Apr 2022 21:28:58 +0200, Krzysztof Kozlowski wrote:
> Using node paths to extend or override a device tree node is error
> prone.  If there was a typo error, a new node will be created instead of
> extending the existing node.  This will lead to run-time errors that
> could be hard to detect.
> 
> A mistyped label on the other hand, will cause a dtc compile error
> (during build time).  This also reduces the indentation making the code
> easier to read.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: qcom: msm8994: override nodes by label
      commit: c46e3c4bdfaca1595b898bb58b112fd683fe0c11

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
