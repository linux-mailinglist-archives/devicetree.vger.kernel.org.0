Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5086650A247
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:27:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389277AbiDUOaT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:30:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389274AbiDUOaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:30:13 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A6823E0F4
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:21 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id s21-20020a0568301e1500b006054da8e72dso3399495otr.1
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=d/DLwGt6g6LrA0OHbPvm58vxFZL50BLk3B4shoDtY9c=;
        b=osOmofyuKQZ46d+fLlYivycgY9Nc72NJLcwdWrh4mOAVthqD/1y3vDuhPXbLCNfQQC
         xk/XP57YC4R3Ta91qxUQXmf2uRtyBPPypeCSXeqT7HNXsTEOleeBzSf9zr4dzz6dIb9+
         kvhnFNvmGXe/tpFqrWTf3lLZHTYGtzDYdLdeRYA5uKtSuHqflsPAgBCr7ohFLwsQ4cEh
         w2qyW5+1vppMXYg2ilb1iEURDZFTgwIM/fcPTeNd/d/QnzCTfb/MAzb1zoBYc+z5VmpP
         /5CoNRhqwjvtlMWFnymOArBLLfxn7aY5uNqRHod1BNFwUO/hfR/8bHOXJGszpYpbB22j
         iKng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d/DLwGt6g6LrA0OHbPvm58vxFZL50BLk3B4shoDtY9c=;
        b=FtvcrxvuctH49h+EKdduCxMwPXEJsFZ0W9rqwcjh3yKkpgbc84i89ifdY7RKk/fWqV
         Tx2MeoXENjsfAUhWjJ+Nj1dejXLtvOTw3MvvWMJwOcgBGK0BXOtIaCqhkUS3fMVJ4ivf
         jOyJ9XYE8JgAw6YonJvjlpwgb9rc3fivmD3VABqnFkTEMngvDM6tKE2XAqu2549uZSe7
         5S8XuUq6LOwEk2v47vhj5M4lLsfqvaBjU7pUEAnjQ1Omefw5ZKknYLR2lfm8i0L+jxpm
         eDr0+j2FlNba+3xICf7RXnvAGiAMxLRx6166GdBGBiA02v4+qDu+6OPFdVyO7z0VS5GC
         +pOg==
X-Gm-Message-State: AOAM5314shHlbDEqmWib4ke4nXGV7LVs/uMJsOMCps4l0wao+cOaBy0f
        QyWF58Wo5QX92HOjiHAQyhse0g==
X-Google-Smtp-Source: ABdhPJwKFEb03yhkH/1MJXX5iENJsqdGZMmW0TrjcECYUo0FaYBxzKhhf8oazSc3ypKEYQ8kfPc4ww==
X-Received: by 2002:a9d:6488:0:b0:603:4051:da06 with SMTP id g8-20020a9d6488000000b006034051da06mr4084otl.298.1650551241296;
        Thu, 21 Apr 2022 07:27:21 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id s14-20020a0568302a8e00b006054e841915sm4296295otu.73.2022.04.21.07.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:27:19 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: (subset) [PATCH 2/2] arm64: dts: qcom: msm8996: override nodes by label
Date:   Thu, 21 Apr 2022 09:26:57 -0500
Message-Id: <165055095990.2574292.3733186072777559695.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220402192859.154977-2-krzysztof.kozlowski@linaro.org>
References: <20220402192859.154977-1-krzysztof.kozlowski@linaro.org> <20220402192859.154977-2-krzysztof.kozlowski@linaro.org>
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

On Sat, 2 Apr 2022 21:28:59 +0200, Krzysztof Kozlowski wrote:
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

[2/2] arm64: dts: qcom: msm8996: override nodes by label
      commit: 2a80a66f68e37ce19dee7fdb3d3e946859712b53

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
