Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DFF779D86A
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 20:10:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237354AbjILSKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 14:10:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237323AbjILSKC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 14:10:02 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5443DE59
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 11:09:58 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b703a0453fso101853881fa.3
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 11:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694542196; x=1695146996; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dg8t1qNOygPjgVWOVmAOAVxTu9CV1SLXUDuzKulmlZ8=;
        b=g04Zn725kKnx6ijHQ2pqJrNdhj24mcxkfkUSLwHufKyMk5LrYcaCvt4Njm8cmxjIqm
         RMmOQ8k5cKld9QnE8ebU5yfEpcWbXuO/jK5cBdv+Q5U/D3KSt5wnGH/wJTrpUCNfre4T
         S0nEk8WE1LV3obXJX9RQX1pT+F3t8q/cYBYPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694542196; x=1695146996;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dg8t1qNOygPjgVWOVmAOAVxTu9CV1SLXUDuzKulmlZ8=;
        b=vXJeUeylFQdQmfxr+MkCHNr4GY94EqZiJdXuX/DHBDOZxFWdeRdS9DWo1/ap43zA1G
         lGjN/wjXROjXE7FWqEr3DXAqJ6RO9fxZLgw9yvnKvjRn0no7Lb3TM90Nzb6loPs1dO+9
         5ptZ6FATHbsVlHErLg1KJ9bOO1Kjm6RxZmjiXj7S744MFYXDgWAuPAYx6Dbi8RfvMtvS
         pWFt2QDMWAFTAm6WYFJMoFtuj31NaLelKTSlbouBj3xHpO2/cgdQ8gQ+W4laXwOmyjnG
         Hahs5aCElNrnkS9gtT1KgZgxZ2BnZuPIxL0Bek5ROlzPxMva3COOLUEfzNh8abMW5+xY
         r84g==
X-Gm-Message-State: AOJu0YwINAc5zAZRQm5CIWwat1Mim+t4dj5VmaHxAVh0Kp/ZvMMXsdGE
        P2sIC71oYiywgdyKq75wpUZSbcRkfxc3yhHTB/3ktQ==
X-Google-Smtp-Source: AGHT+IF5s1Sk52Jj/p24BYqlhxt1dINxnjzQCcRFvRwclkBdJ2aJiEMXWL43KS2+2sGN6IVZfPDwHXcngx3Y+ApIX7o=
X-Received: by 2002:a2e:9e8d:0:b0:2bc:d33e:ccc5 with SMTP id
 f13-20020a2e9e8d000000b002bcd33eccc5mr381772ljk.41.1694542196552; Tue, 12 Sep
 2023 11:09:56 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 12 Sep 2023 11:09:56 -0700
MIME-Version: 1.0
In-Reply-To: <20230912071205.11502-2-david@ixit.cz>
References: <20230912071205.11502-1-david@ixit.cz> <20230912071205.11502-2-david@ixit.cz>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 12 Sep 2023 11:09:56 -0700
Message-ID: <CAE-0n52myAYysd0iOH__pvU9Cfxy2bfzjmfybJyMyfEiWWR4ag@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sdm845: cheza doesn't support
 LMh node
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting David Heidelberg (2023-09-12 00:12:04)
> Cheza firmware doesn't allow controlling LMh from the operating system.
>
> Fixes: 36c6581214c4 ("arm64: dts: qcom: sdm845: Add support for LMh node")
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
