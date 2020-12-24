Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B44752E22EA
	for <lists+devicetree@lfdr.de>; Thu, 24 Dec 2020 01:10:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727057AbgLXAKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 19:10:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727029AbgLXAKD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 19:10:03 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04D21C061794
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 16:09:23 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id iq13so235668pjb.3
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 16:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ShQbyvevmwHQCLF5QriZyQfBTHOY64tkDvnAKsQzHRw=;
        b=jyzfCdku+WV/8dKfBhR3yqZGTB/uOaB7h4qs5tWLyffyFZK+vUyuCMxL+d/2EGUKoe
         XWLli2CtVPyViUtQuUsfbmFcAxiYcAhwJ5xj7/KB+xl6f9kruTjrmtX+CcftLnlYMdqC
         kIt5knkSbC4VSu8QDcR29ijo7+/NgqPpAP1s1yjwnDZYgiAK8wQCAuWEu9QASGitLAhn
         PKVucU58MyMgERhn2i02/23qaXe7yFEC04FE1/2TKJLNiUePz3JtxD97fSsNqhVl2JhO
         1r6E0LQRJRJuqiQpC+NBNwXgmY1JPUFZejWepjzwec7f6/15/W3mFY/CKSILbgKVH/gI
         iC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ShQbyvevmwHQCLF5QriZyQfBTHOY64tkDvnAKsQzHRw=;
        b=BmZ79H6d09lBumbQmWMDvp2e6CEPaZ+KizCX9/zQRhc5iq2IgPHBzjzg0v8Kmqf24Y
         8JdEZUwYOCyt1tFynM7+ehIM2N3NFR2ff0tYdp9OdGlE4UTkU6VlRsg360jPSVdsbzq+
         KJD8efn8qhxSd5LNeIWDxQpZk1UlX/7lqoOBapD7V7tYLOjs2GIvo7+fM2ZmXpeEcYSo
         4IfRJd6qyE6o0DyssE8eu8L84QNAXQX0tfvFOQ+dPgfsatsXKWItOLRM4jl3hAdLc5Lr
         8mz0LpHIW4FI3Rmc+Dxhchxa6lTwF7aN/fgvkNRlmoNjrLS2fEfc43HIrYX5ePFkpdO6
         0jGQ==
X-Gm-Message-State: AOAM533LhMty6gizQ996coUIYyQTG2Dww3KxRbwmY//jmxXZF3nlB3Vv
        1Td5W7iJDsIL1GXmOcklFZ5mZlO40cA=
X-Google-Smtp-Source: ABdhPJyje+K+UO8IX18EP1ygLSNT9RLUzX3foCctMUd55WTAatwxxEOcO4ti+cOEuT8hB/1bLMnZWw==
X-Received: by 2002:a17:90a:bc01:: with SMTP id w1mr1815332pjr.173.1608768562617;
        Wed, 23 Dec 2020 16:09:22 -0800 (PST)
Received: from [10.230.29.27] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id y15sm655320pju.13.2020.12.23.16.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 16:09:21 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: bcm2835-vec: Add power-domains property
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Eric Anholt <eric@anholt.net>,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <1608751473-12343-1-git-send-email-stefan.wahren@i2se.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <32d1873e-16e9-1b5b-f521-ef8f5931b437@gmail.com>
Date:   Wed, 23 Dec 2020 16:09:19 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <1608751473-12343-1-git-send-email-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/23/2020 11:24 AM, Stefan Wahren wrote:
> Adding the missing property power-domains to the bcm2835-vec schema to fix
> the following dtbs_check issue:
> 
> vec@7e806000: 'power-domains' does not match any of the regexes: ...
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
