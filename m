Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1C446522D1
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 15:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234091AbiLTOhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 09:37:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234095AbiLTOhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 09:37:45 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CADEEDF41
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 06:37:43 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id n1so12612035ljg.3
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 06:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2JsFMcOeZFGUsQ+r4v0+OvzrOSs0ewhDSvbujmdrSKk=;
        b=xtcWee16pQLUIWd3eL2BtuEY2t+lK2nRm2dmSSdY3AOyXWYfxWXBgmZI/uAyklkVRw
         9RPcJpLVpN98w8nClGy17G+UIq2EqVEPpi1iYiIQWyrX/RvlxMhIySb9j8Y9W5nr4ABf
         oloVD5mhEBNdZ1Cx50ZpzfzcgC40e21cxut4a/z7txR3HaGRhPzejbiALzcfwVGD3FdB
         pyNVBEpzAx/xydEGRKI+hT7/hxmkzw9EKhq7FmNlcDhp6Nur/ejBSVx5ZpZLoC+3sLnx
         vPhG4w0lLqaYN8bmZ6ToBV4+j7o2JmQMkTCdLKFjsyjSD/7NUGi7tFyD48cHFhuVgOeb
         1lYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2JsFMcOeZFGUsQ+r4v0+OvzrOSs0ewhDSvbujmdrSKk=;
        b=P/yu5rkAdDYsO8RZ0G3fORcq3UoTPjf27d0OF/ZgRaLHN2P+q6yEL3EmNr8YPj1LoL
         1TdvWooaCYMq7GoCKUv8FeuO4yYvQ0qwvcy4suldosXRXkPVmEoOZvEek2x3N7vEu9Xj
         V5n3RjDLLDqSmyYyfr1LJUcVFURAhiIJAfTbmij7eRToMsld5oVSsH5B1+OJVLeStJyd
         VOfNmmwrrR/W1i4gm3p/uDGY1ZGdALjqAxyWUft7ZMbNJGyOImgqFMbFN0nWEKBYSqaR
         7j7+8VjmPP4hH4D3Utln77TgERU3vP0beH0DQdJ7Pfpbjd3/foZ/yUrq8YGa4b+L0JjX
         juKg==
X-Gm-Message-State: ANoB5pnRYYBI4ZJQlTZTFl4bs4C2bRSwu4JztV6SdWoK4hi0YAKLlLye
        V50+kFGQnhbaM1fODSE3iA4Pew==
X-Google-Smtp-Source: AA0mqf5+u3M0eVUcPdEEsjPO8NFMgWK3ojUVLEipPYJCQv91qQuGT+OP10lOuJ6l1e37JpvHPFAicQ==
X-Received: by 2002:a05:651c:12c4:b0:277:44e:4992 with SMTP id 4-20020a05651c12c400b00277044e4992mr11303457lje.26.1671547062129;
        Tue, 20 Dec 2022 06:37:42 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z14-20020a2eb52e000000b0026dcb07122csm1044666ljm.117.2022.12.20.06.37.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 06:37:41 -0800 (PST)
Message-ID: <842f65e2-ee8f-140f-ac0b-cb5898fc36be@linaro.org>
Date:   Tue, 20 Dec 2022 15:37:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 2/2] dt-bindings: display/panel: Add AUO A030JTN01
Content-Language: en-US
To:     Christophe Branchereau <cbranchereau@gmail.com>,
        thierry.reding@gmail.com, sam@ravnborg.org, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, paul@crapouillou.net,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221220120108.481554-1-cbranchereau@gmail.com>
 <20221220120108.481554-3-cbranchereau@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221220120108.481554-3-cbranchereau@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/12/2022 13:01, Christophe Branchereau wrote:
> From: Paul Cercueil <paul@crapouillou.net>
> 
> Add binding for the AUO A030JTN01 panel, which is a 320x480 3.0" 4:3
> 24-bit TFT LCD panel with non-square pixels and a delta-RGB 8-bit
> interface.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: Christophe Branchereau <cbranchereau@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Drop my review, code is not correct anymore and you did not test it
before sending.


Best regards,
Krzysztof

