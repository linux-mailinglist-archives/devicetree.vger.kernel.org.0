Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F88747E75D
	for <lists+devicetree@lfdr.de>; Thu, 23 Dec 2021 19:01:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244658AbhLWSBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Dec 2021 13:01:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244634AbhLWSBl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Dec 2021 13:01:41 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AC17C061757
        for <devicetree@vger.kernel.org>; Thu, 23 Dec 2021 10:01:41 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id g79-20020a9d12d5000000b0058f08f31338so7931889otg.2
        for <devicetree@vger.kernel.org>; Thu, 23 Dec 2021 10:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dfUzlOAn94ad16aOxRm80CzpKeAMYFpuYv2vYBOrxD0=;
        b=wRZycaNpkP/MAWgXqpVP8rTmHZd5Ji6GA6B0AQAtnZKPr0L07pGBFY1r/MuK/LUWtO
         IGWJoIvyvjtb5Z4DCBh6xKB71pMp9rCPrSx+5nAFOln9ObI7shc+b9W+eBQ8EYLBjubn
         DgAadQ2xH85EAHVp9aisfULspwT5jLfnC8FvzRVbxOqN5dEVJpweSqgtGB+SCfHFJ+CW
         TwQqAzcIW5k0KWoAyrILA207dmuTa1sfdUx5Db+92e4lPzYi75qXm+6OtcgrgXYGOqO8
         HTPX4V8hN2iPNWoborWKkYGTTs0leuMI4ZOTh6/kpgJJ6Lyw9SGkcmGb+9N8wloP9ukF
         3bcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dfUzlOAn94ad16aOxRm80CzpKeAMYFpuYv2vYBOrxD0=;
        b=F0oXJC5o+9tUIauGiDGSP4awhtQbzWVvoSiavB523IASOy6jigFtkdSsFbhjGfPB/q
         aldt4Yk4IVHFhNMRd/rjJU+yh53pHNOKJOLSh/g5Yz0IUIw05dr6mO/O0/w6uaImSVqT
         IJ5s8E8qk3St9tptkIsaC3NiMZAWa9b5kqt7TQa8Jk/H2csOqPkDmJJrPpBQeUiKEqJ+
         yQzUo2vw38t4WsIQg5nt3fdLxvfQTn2EgvASLK/B7PjMKcFQF1nrISVc5gDd7536ppo9
         Wj5wPdwDd8vGt+1U0P7TRXWQgQljMe6sY42r1P4DDZ359GzxsCSxHat1ij9c78mM7qSX
         OU8A==
X-Gm-Message-State: AOAM533OXTmICBn8vKz5XPfQgSxdmvKBMRKl5aEZd02NKG2ZiBk9SZha
        udRyjI21+pbLMCtuU6w2PLfk7IMwflMJXw==
X-Google-Smtp-Source: ABdhPJz9+drNpXFMlEsgLFs1STnT0bgyub2hZqb6hfaPnVTkAWC0pq7p42Q8iMpw3GXpp56eea9Lqw==
X-Received: by 2002:a9d:2cd:: with SMTP id 71mr2106805otl.107.1640282500577;
        Thu, 23 Dec 2021 10:01:40 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id b24sm616515oic.16.2021.12.23.10.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Dec 2021 10:01:39 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Vamsi Krishna Lanka <quic_vamslank@quicinc.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] Revert "dt-bindings: arm: qcom: Document SDX65 platform and boards"
Date:   Thu, 23 Dec 2021 12:01:38 -0600
Message-Id: <164028248954.3843593.5026213913703078453.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211223173339.GA3925@standask-GA-A55M-S2HP>
References: <20211223173339.GA3925@standask-GA-A55M-S2HP>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 23 Dec 2021 18:33:39 +0100, Stanislav Jakubek wrote:
> This reverts commit 3b338c9a6a2afd6db46d5d8e39ae4f5eef420bf8.
> 
> This was a duplicate of 61339f368d59d25e22401731f89de44e3215508b,
> causing the sdx65 compatible and its board to be documented twice.
> 
> 

Applied, thanks!

[1/1] Revert "dt-bindings: arm: qcom: Document SDX65 platform and boards"
      commit: fc5a40694ba684fb3b7009819965ec38e829118f

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
