Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 142C56CB7DB
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 09:21:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbjC1HVL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 03:21:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbjC1HVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 03:21:10 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8736630D2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:21:09 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id eg48so45562337edb.13
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679988068;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M4CYgrnxL/oD4LhNxCijRW1wSvmkQAAax1ssKQ5T4oE=;
        b=TimBilBJ/4qlKuklhMtkkntEIp2MCOBC0BvhGaTAvMCWbYhcry589vp2bRc9T+zNVs
         +LaQ2wTJ2rcFawHBLnEgFzXEtxzCEmuH7WuTlqvGH+GmLBnN1Zt/iGY+PhQvJZWyHX0/
         pGyYghOr/wjgN7Qh9K9+QT6o92dNzoYVO+srLA8rufopIH2d9hmWgsbsMOYHKanCqxkN
         Uv6qEQIvclCC6dRgY2wg/oT6O6ijp4mTnvPNqLJI6YClpV21jpJfeOxdpQ5yp/1LQkud
         W9HkZwD0J2eWRv0gKn4oRf7hDjLz1iEyjBon/CWNvoyKYFmY3QVVaPuoj9d7oGEi9IyJ
         E/Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679988068;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M4CYgrnxL/oD4LhNxCijRW1wSvmkQAAax1ssKQ5T4oE=;
        b=mgKHv2WrqgBIIiC8Q9lVtm9BeWQD2iOLgdTID6eAir8xYKDioBa1W/ywxBMObhEFYk
         GmEMk5XAiYjhECw2IH/6FGFChkLGbwkrtp2I2KSHaaHiemz8uoRfMcPhY7yvCv6JmMYc
         oFkT8Tih9cwD2foTNHi1C83WADR44TKkjYtAhuORubBnIahTuGacnF7VxKpgWl2Ka0jt
         VRnOxPVszuZwMUX2D0K8CfgH8VjTTWzS9w1kODEVl6lNy2OJEX6dy7JoRtCtYQk5qc3/
         04xU6QQ/gLXpFL8U0n+US5L+X9qH2OxzkH7Jvf6Myj/Grj/9uqMM8xoxNtU3bITiqVu3
         gTkg==
X-Gm-Message-State: AAQBX9eY4Wz/PBN5nUDwfz8UobBiHrYu5o9u8ThTJ6iJx7MiKhxOA8Fa
        BdAF32Wn4jQbOG2KwHj3m+IBQg==
X-Google-Smtp-Source: AKy350boEBP6L5wV56dT/8UCE41l1icRJq861X7V/ttRVdVf35fbUR36SPMnrgi+Gjem8bJPYlbXCw==
X-Received: by 2002:a17:906:641:b0:8b1:77bf:3bdd with SMTP id t1-20020a170906064100b008b177bf3bddmr15668254ejb.36.1679988067996;
        Tue, 28 Mar 2023 00:21:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id g17-20020a170906c19100b00921c608b737sm14912135ejz.126.2023.03.28.00.21.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 00:21:07 -0700 (PDT)
Message-ID: <af455119-7178-bed8-4099-ee50c7b6134b@linaro.org>
Date:   Tue, 28 Mar 2023 09:21:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [Patch v4 02/10] arm64: tegra: add bpmp ref in tegra234-mc node
Content-Language: en-US
To:     Sumit Gupta <sumitg@nvidia.com>, treding@nvidia.com,
        dmitry.osipenko@collabora.com, viresh.kumar@linaro.org,
        rafael@kernel.org, jonathanh@nvidia.com, robh+dt@kernel.org,
        lpieralisi@kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, mmaddireddy@nvidia.com, kw@linux.com,
        bhelgaas@google.com, vidyas@nvidia.com, sanjayc@nvidia.com,
        ksitaraman@nvidia.com, ishah@nvidia.com, bbasu@nvidia.com
References: <20230327161426.32639-1-sumitg@nvidia.com>
 <20230327161426.32639-3-sumitg@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327161426.32639-3-sumitg@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 18:14, Sumit Gupta wrote:
> Add the "nvidia,bpmp" property within the "memory-controller" node
> to reference BPMP node. This is needed by the MC driver to pass
> the client info to the BPMP-FW when memory interconnect support is
> available.
> 
> Signed-off-by: Sumit Gupta <sumitg@nvidia.com>

DTS goes to the end of patchset. If you put it here to fix
bisectability, then your patchset is already broken.

Best regards,
Krzysztof

