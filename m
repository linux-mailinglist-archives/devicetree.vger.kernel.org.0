Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B578C394316
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 14:59:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233583AbhE1NBK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 09:01:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233689AbhE1NBH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 09:01:07 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3602C06174A
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 05:59:32 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id c20so3961055qkm.3
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 05:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QkS67PNWJLrMlG0Eh1DFrl12I+MHfh0CuXPqyN2o9Jk=;
        b=RoE5+ne+IEtUIwJTmkaKAmIW8xmlFFiZyFu+RXc8Xtk3xP3WS2cnNmBkmt0rGcwaq/
         qb2PuixGE3rnUfQLjmTJ60OtadS6WqwIMVT+H21njXbcac9gUxl4ua+OaRnV6dmBPQGk
         cCjgQ0xixLesraJ7oA4Tw1q7d1IW86tp8+qcQKQmnLrhSW2W5PPT0vIu/dA7120u6STL
         lP8WtyfVW1q00VzSS8n+0giUcaceB12ncIClUcgKgzU6JWAGYtnVT6Fs+IJQA/a+kbEy
         bbqVyqPOW610wOc+b5AIAlA2tuOsdLLB6pV2bXvQM/3xs04eGLgpqeh/VYCtDPtFmGeu
         NfYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QkS67PNWJLrMlG0Eh1DFrl12I+MHfh0CuXPqyN2o9Jk=;
        b=s+Q+cvOeInvhufj/1VRXapDWoo1guewd00sjsjJNaqjCSefo1m64AxyQ9TZJZmWCak
         PSEp1ClBnugSUFDQIu07XoD8W8e3fmB4JF6r85n0LzC/so4LrZbymRoS7vhcFZQs2aBT
         jTDgt1VOeMyTatfvDOlTi1q50N/ARQhpyJBncUlxwTzot2evFMaqmWQVlzpczIcFcNjT
         S8ZMoE+7Icpe1ixGuYIWzAQdj6dPOE8foyMfSIiwjYHJjnUHUfWdi2DyDQ/vWMPHryWM
         9QzqZMnhPS1CsTKiAVCnF2ba+98E6Ul/dKAM3XUVAMApOSO/WM9bv/ToIm03zYhj/EZo
         iUyA==
X-Gm-Message-State: AOAM532m0BBxTJXwZ9fxSuMK3XdPvNRVYrZN0UpKaiaI1GkR3v2CfDgy
        2d/g2+OdfuoYEtfR1guCcqp6FQ==
X-Google-Smtp-Source: ABdhPJzrZ6/fmuomvi1UY7oEviJSluEuJL6Gjb+/l1q88tzyHFRCD8yK7EweolQnqF3+MS3DPRFyUQ==
X-Received: by 2002:a05:620a:745:: with SMTP id i5mr3821434qki.324.1622206771962;
        Fri, 28 May 2021 05:59:31 -0700 (PDT)
Received: from [192.168.0.189] (modemcable068.184-131-66.mc.videotron.ca. [66.131.184.68])
        by smtp.gmail.com with ESMTPSA id d6sm3525975qkf.109.2021.05.28.05.59.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 05:59:31 -0700 (PDT)
Subject: Re: [Freedreno] [PATCH v2 2/2] dt-bindings: display: msm/dsi: add
 qcom, dsi-phy-cphy-mode option
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
        freedreno@lists.freedesktop.org,
        open list <linux-kernel@vger.kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <dri-devel@lists.freedesktop.org>, Rob Clark <robdclark@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>, Sean Paul <sean@poorly.run>
References: <20210423172450.4885-1-jonathan@marek.ca>
 <20210423172450.4885-3-jonathan@marek.ca>
 <20210503171139.GA2011901@robh.at.kernel.org>
From:   Jonathan Marek <jonathan@marek.ca>
Message-ID: <0e083e31-d349-6d5c-048f-258414492b2c@marek.ca>
Date:   Fri, 28 May 2021 08:57:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20210503171139.GA2011901@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/3/21 1:11 PM, Rob Herring wrote:
> On Fri, Apr 23, 2021 at 01:24:40PM -0400, Jonathan Marek wrote:
>> Document qcom,dsi-phy-cphy-mode option, which can be used to control
>> whether DSI will operate in D-PHY (default) or C-PHY mode.
> 
> Given this is a standard MIPI thing, I think this needs to be a common
> property. We already have phy bindings that use the phy cells to set the
> phy type which I think you should use here. See
> include/dt-bindings/phy/phy.h.
> 

Is it OK to simply change the option to something like "phy-mode = 
<PHY_TYPE_DSI_CPHY>;"?

(using phy-cells would be annoying to implement, with no benefit IMO)
