Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FD9B57E4A5
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 18:47:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235584AbiGVQr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 12:47:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229771AbiGVQr5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 12:47:57 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFC088F537
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 09:47:54 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id v5so3142764wmj.0
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 09:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+R4IGu7uzIRu6xwKMm+8W0qVqTJ1EcVqQ8zqwW5Uf6Q=;
        b=aFtOl+yB33pbeBM2ufkA9mgHueNEE++qGPcXJrfvUZLKBH45uNuHK3JkIy+ao4bBIE
         G/l2Nx/KsnjS5SGbaFF8cDZDXRWyJ45PJAOBwjY0a0c0wfWXErXrRNnltcrneEZgafvs
         vazi+KyPrvd4D+1TE1cZVFy6gkqCu5atV5ihBOMCY40j/J9Z7u/g71X+9pzHZFw5oUYe
         6DvGp8aw7QL9bPw3OiWFkCPfKF4D7SSQnVALr0AqL0u20k+/11ibXv4dpsWsRUbIVkK6
         kU6SM+SlM5difXfWum5ch4luwEVfAvrkfOVVdp71lpcI2/A3pB+GBKAOphAvErUevjwY
         1Gag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+R4IGu7uzIRu6xwKMm+8W0qVqTJ1EcVqQ8zqwW5Uf6Q=;
        b=4VZ5K9Za7ta95h8j7n/HIplxkhvUISp/qz0yxgdcUL/pWT57kf0bhRoft+vda5rzNR
         Gc9yV7YlHtERxOzmbwSGC/wNc+85X8+X+PcPeiJxU8svKzWlpgnZot+rs2gqOgJ1vFGV
         EnRFUBpp5Z/uoN39wRJOqAef6arWF3MWQV08onSenfX7J61xrYL4GLeyFlE0u5XK0ITb
         o45wGB8zNwPucLaeS7TUThONhtOV/y/aeJ7CFousgV257iiJ/Wv7+JZm0Vqx7Arp6H0w
         mmc5E9EgaA8aFkt75JWrvCA2IyXvV1MioWne/jmctymL50pKjZ06v7NVSChrX0x5YYJK
         adOQ==
X-Gm-Message-State: AJIora+WKUCwvpxQpP68YEzYS7fZJAV6Dkp2FgzDn6IOTONckScb5sSV
        ANv/28xqf3E3Szf1L9gf73XXLw==
X-Google-Smtp-Source: AGRyM1tYNQcfZ5ldrodJST1lIyTciMe2i8015txccx/egjjcWkx0PXvvyOXHs/AEP/sJBjv68JUXug==
X-Received: by 2002:a05:600c:40cf:b0:3a3:1fd6:47b7 with SMTP id m15-20020a05600c40cf00b003a31fd647b7mr472879wmh.32.1658508473261;
        Fri, 22 Jul 2022 09:47:53 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id e8-20020a05600c218800b003a319bd3278sm9075310wme.40.2022.07.22.09.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 09:47:52 -0700 (PDT)
Message-ID: <3645463f-0fd6-efad-c257-c214b1b49b18@linaro.org>
Date:   Fri, 22 Jul 2022 17:47:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2 1/3] media: dt-bindings: media: Rename imx412 to imx577
Content-Language: en-US
To:     Sakari Ailus <sakari.ailus@iki.fi>
Cc:     jacopo@jmondi.org, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org, konrad.dybcio@somainline.org,
        andrey.konovalov@linaro.org
References: <20220718014215.1240114-1-bryan.odonoghue@linaro.org>
 <20220718014215.1240114-2-bryan.odonoghue@linaro.org>
 <YtrKNQaMYOhc4UUM@valkosipuli.retiisi.eu>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <YtrKNQaMYOhc4UUM@valkosipuli.retiisi.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2022 17:03, Sakari Ailus wrote:
> Quite possibly the sensors, for a reason or another, share
> the same chip, so also the ID register will be the same. I wouldn't
> necessarily expect them to make a variant just for that.

Yeah it could be a silicon yield thing I suppose imx412 might be to 
imx577 as Celeron was to Pentium.

Assuming there is no other identifiable difference at the register 
level, wouldn't you think it would be more consistent at the naming 
level to have CHIP_ID 0x577 live in imx577.c and then to have 2 compat 
strings.

---
bod
