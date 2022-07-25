Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 162F45802A1
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 18:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235811AbiGYQ0Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 12:26:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235559AbiGYQ0P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 12:26:15 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76F171C122
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 09:26:14 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id bf9so18782028lfb.13
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 09:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4T+PbyHM+wfLYl65UslDGXMXntturk9NYcTl2mpNuw4=;
        b=J1Id9hOvX/4PicOieafgx3YXjugYQ+C1JHlqE7GBdQkHoOv2a0rezvL6Ix8UHLi/kR
         40qMVOZ2dAAJzvyMFB4ehO3IKUDqedyMAftY4wnPCyogwEnsDbJq1I66QLu7tPlUSfnZ
         9sEwZY89EcaKnqUBnrXXZ/xIsOnFIvYvFkX+wGFfLe+8rCGobMtAGIjlK4KaP3a/+Vue
         NruVlosIyI0rGCW/2Oy7BC+nUSSAae8YOseQRzup0U8WFrLS4wLiLASTGNT0KV55d+dU
         XSLGtRQ0EiWH3FhyXQcs/s5R2+N4zmGpujP2mEhfsQe1dKBDkwWdhl6ZQFjsTEbySQcW
         F2VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4T+PbyHM+wfLYl65UslDGXMXntturk9NYcTl2mpNuw4=;
        b=7BtxVl8//0gkKXNugOm+LaDTMnyazg+G553QxjeImfgOFhKB1OcwWhYlP+s4+1HjN9
         zfZa0dfSFacAOsZI+h+XDvtaT3aGPyVUd/JivJLYcWzfurAMn9dr1RjtCVZWpB8gvrji
         dYa+C5cby+qpEyvuozrUvw6IOsrsLZpeJ+l/SxuUCIE5R6EphuPz2FOdIrJXTSxilaXY
         gbDBAab8bypYLK++Y6LS5rJhPcFa7sw/Lvm1WlNYIXmXSWzn9fY92xnPZIXoSFDAM8/4
         zSi2y1u8yNl/SZB/V5LU4LjNLXRFnmFIdrXJjOIeem72bMPtds50QiN8fK1E4vbpJ0e+
         WksA==
X-Gm-Message-State: AJIora99rKIANeJSOEUTmVUfZI9dIbYZKzuOKPkZdHa/8zz7kd9tpj25
        ce8zZHuHkOLvNHZ3/+gnje59PQ==
X-Google-Smtp-Source: AGRyM1urdUV3F43axjGYiO0+LpThUaQdCfH0uBGEDq3XRS3hIn1yofWjeUrjT/CDPws3EkB/DCAssA==
X-Received: by 2002:a05:6512:1310:b0:481:6154:c292 with SMTP id x16-20020a056512131000b004816154c292mr4696089lfu.95.1658766372821;
        Mon, 25 Jul 2022 09:26:12 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id b9-20020a0565120b8900b0048a950050ebsm352917lfv.28.2022.07.25.09.26.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 09:26:12 -0700 (PDT)
Message-ID: <515453c6-eaa4-d09b-6ce6-3840b350dcbb@linaro.org>
Date:   Mon, 25 Jul 2022 18:26:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/1] dt-bindings: rtc: nxp,pcf85063: Convert to DT
 schema
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org
References: <20220725071919.25342-1-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220725071919.25342-1-alexander.stein@ew.tq-group.com>
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

On 25/07/2022 09:19, Alexander Stein wrote:
> Convert the NXP PCF85063 RTC binding to DT schema format.
> 
> Add 'interrupts' and 'wakeup-source' as this device has an interrupt
> which was not documented, but is in use.
> 'clock-output-names' and '#clock-cells' are added as well, those were
> probably missed when adding clkout support in commit 8c229ab6048b
> ("rtc: pcf85063: Add pcf85063 clkout control to common clock framework")
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
