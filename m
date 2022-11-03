Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC04D6183B1
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 17:06:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbiKCQGm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 12:06:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230205AbiKCQGX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 12:06:23 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09919178B8
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 09:03:59 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id i12so1435766qvs.2
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 09:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yKMpDhiUu/M7O0O5bkHOuOa6eYOMJH/4iBj4qwPMl7Y=;
        b=sbL6SBVeknWERt/ChyeC5xi8UZm/BhelfxrCWszU3t2KiEM9cN6xBZnpnE46zBJmCS
         UOIO2RW9QmZd8roO1mgvZLXsSFEdfkbyswDEib/+g2dI1iOH5P5ueaKjHjVuB50gAO1h
         6BdAbqyQUZI4/XXBikqYvTIDZNepjhPoKkPoKGLLhLpFtdM1saQf+Nd5b3w+gWMlWWDk
         Guc6YdiFwLeTGog7HeKBuARVibkdAQBpxbZQ9AyhJBkzC9tmL70GxbXiqqajzJ7pYbU1
         iwBbm4+jU0BHwEjMICJHU9+f6kYRY6kqujF1jvv3/aQLxPEINogM2Ms0s5iX8p/zC8Nc
         q3cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yKMpDhiUu/M7O0O5bkHOuOa6eYOMJH/4iBj4qwPMl7Y=;
        b=O4c2i/PWmLB7s4IpqblHwXh/eY/JkHQnwjlSDFcXI0pHQoQeeqsPlAlbkYI5D6eNrX
         Amq8q5dDu/rbO5IXI1Q2iWfMiLaXt4zdk1ilWVu5Slc63hMs4MOYiEAbZ2ARLQ4ggGQX
         vFkN0t946iECe+DN3ueGGXbPInPU367zCsr6VHEPVB0sDKPdfYuWN79LazC+ngREhjAX
         BFqCBE5Lrhrz03u69c75jJvy4OGSpxl8URS0G92fPUajaP4bxbWtv5uyrupegMThB3tS
         2hUDeBDhcu5yBqtw3m45QdENN2Ey+Rwu/GQ4ZOmDug7vAfzAk17+rzHafVxcMmlxJRrm
         e7oA==
X-Gm-Message-State: ACrzQf1jEhiXQOLYGQ8uQPWgo2Vm5+KvMVfoA+cGETA2sZxydR0q/0TJ
        UcNSm5jZlyfvNVJrYiM1oB2G8A==
X-Google-Smtp-Source: AMsMyM69i5ab1Q7nhLqQaq5bDRNkS2UxjRukihuDyZW5o6eBPkvcCOM6zqEQyHBY8YcOZGQOBrctsQ==
X-Received: by 2002:a05:6214:2b08:b0:4bb:bd9b:64e9 with SMTP id jx8-20020a0562142b0800b004bbbd9b64e9mr27475391qvb.53.1667491438075;
        Thu, 03 Nov 2022 09:03:58 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id d2-20020ac85442000000b003a526675c07sm718519qtq.52.2022.11.03.09.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 09:03:57 -0700 (PDT)
Message-ID: <a4a52f69-81e9-c4a7-011b-8d79ac519cc8@linaro.org>
Date:   Thu, 3 Nov 2022 12:03:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v7 1/2] dt-bindings: it6505: add properties to restrict
 output bandwidth
Content-Language: en-US
To:     allen <allen.chen@ite.com.tw>
Cc:     Jau-Chih Tseng <Jau-Chih.Tseng@ite.com.tw>,
        Hermes Wu <Hermes.Wu@ite.com.tw>,
        Kenneth Hung <Kenneth.Hung@ite.com.tw>,
        Pin-yen Lin <treapking@chromium.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20221103091243.96036-1-allen.chen@ite.com.tw>
 <20221103091243.96036-2-allen.chen@ite.com.tw>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221103091243.96036-2-allen.chen@ite.com.tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/11/2022 05:12, allen wrote:
> From: allen chen <allen.chen@ite.com.tw>
> 
> Currently there are no "upstream" users. So, no existing users to break.
> Add properties to restrict dp output data-lanes and clock.
> 
> Signed-off-by: Pin-Yen Lin <treapking@chromium.org>
> Signed-off-by: Allen Chen <allen.chen@ite.com.tw>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

