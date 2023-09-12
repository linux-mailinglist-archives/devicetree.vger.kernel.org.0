Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C4C279C6FD
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 08:35:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbjILGf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 02:35:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229944AbjILGfZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 02:35:25 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB215AF
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 23:35:21 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-402d499580dso55612275e9.1
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 23:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694500520; x=1695105320; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K4FhVzmJM/ULzvqAAR/Qy6uEW0M6eIPisBM5e6HxugU=;
        b=mgW/OZVLan/YjZPfRc3CcNeiS3Hb3zFfDz7cMHCZA3bRkAe02tMxxJTje+19ea1GS+
         QwAg/oAq3vYjs9G04vgOTIzIitCE4VAQNCwgxjHic6E53G0bUxuzNuGBjnYYDb3MhCEO
         jNfi9IwNuGGfNINEeGESoP0xHlQLSiU4HoQUSjIqrvKbRGMCNNARHIkpdNJxb+wgra5/
         UPZlOyG7BzIjHJkHYlUNrLy3pjoNw2IW/WuIWTcM0nyTYZjApDcw/RgHnofCt4fqaBVC
         V7two/+aBBO8zOnVnpuycutiO7BPrJa6I0xFD+hcYgYib1EgbcgCFXZqfO3CHv9UAkbw
         Zjxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694500520; x=1695105320;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K4FhVzmJM/ULzvqAAR/Qy6uEW0M6eIPisBM5e6HxugU=;
        b=pRbWurFXhZgIwuuaxzRioHuD2GF9m0WS7cUsq9Xhe0XktKBDRxKkl8lwrwONldId9N
         NCsd5HclF0G1+tVL+gC5BFlTGtCu8IUoswQbBPNrg8nxdgk1qRKQxmCQpCU0v2vgrzPV
         11eiC1v4+aNni+5poIaKEpJUFeq4H8SqQ/RyrQOcp0l05MicRUiCDlYJbbfJ3f+7YAdu
         U+eRdlwEmykfsoK6nlSEXg+DTVnDFSNu8m7zfg29TtJHR8lE/xG6X7EqSup1awszEV8f
         ob7v6LGEgk5ok3zMw2MFIgR5K5JsehBwexn63Jav3sQoQ2SSFueACh8wGH7XgWPMluIl
         EnWg==
X-Gm-Message-State: AOJu0Yyn3dZQAs5GnagPBBDjPkKwmDhAjV0c3nR8WseGhEbItDFvoU6A
        /Hym8HARERYcM6Xojlj1nCVjhA==
X-Google-Smtp-Source: AGHT+IFEjSiy965YD4ebG/KpTTpgB+1t/1oTQN6sYX+WIxdcv4X7ckR2zpl9I/NF5+ugHBIosk/5NA==
X-Received: by 2002:a05:600c:3794:b0:3fd:1daf:abd8 with SMTP id o20-20020a05600c379400b003fd1dafabd8mr9203700wmr.40.1694500520160;
        Mon, 11 Sep 2023 23:35:20 -0700 (PDT)
Received: from [192.168.0.163] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id a12-20020a5d456c000000b00317afc7949csm11972550wrc.50.2023.09.11.23.35.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 23:35:19 -0700 (PDT)
Message-ID: <ab2f16ac-d6d2-4d87-96f0-10aafd264fd9@linaro.org>
Date:   Tue, 12 Sep 2023 07:35:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] arm64: dts: qcom: msm8916/39: Disable GPU by default
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230911-msm8916-rmem-v1-0-b7089ec3e3a1@gerhold.net>
 <20230911-msm8916-rmem-v1-2-b7089ec3e3a1@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230911-msm8916-rmem-v1-2-b7089ec3e3a1@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/09/2023 18:41, Stephan Gerhold wrote:
> MSM8916/39 do not need signed GPU firmware so it is generally okay to
> have it enabled by default. However, currently the GPU does not work
> without also enabling MDSS and it's questionable if someone would
> really need it without a display in practice.
> 
> For consistency let's follow newer SoCs and disable the GPU by default.
> Enable it for all existing devices that already have &mdss enabled.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

