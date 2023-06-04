Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38E987215F6
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 12:16:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbjFDKQh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 06:16:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjFDKQg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 06:16:36 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93D58DF
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 03:16:35 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51491b87565so5744385a12.1
        for <devicetree@vger.kernel.org>; Sun, 04 Jun 2023 03:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685873794; x=1688465794;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZLg9QBJhk1oImNoGSDJiKswDbiKjTVpqU48w/ZpJGgc=;
        b=L2QUXG/6NWS2T85/D3ATrgEr19pjlsgEtwm3WZDq6GTOStkw/tdCPQyod87YsTxlEj
         ZIEUHw3xnxN6WaWwbPoSblcKwT4JJtJUAmse/8hWAeXq1/w1wXP+H/2KdWehcnbdjlXJ
         0udN2SNpie4vr/EW9zAjgrpqI9p39ejHx9sqcV25twz4AP4Qbef58xd0FIHgMqCQS6RU
         lK6HPpB+ZHftNIoL1txD8wajsGuDW7ETUPYBoZyTZIe/G4AIOEUzQqCZd2r4Oztc56Et
         A6j+gYZZVjyg1WeCmKPqYTy5izgNQ1kD3xvXnGm/mU4rcKhtW2O9nkHfYAufPt0YsIhW
         7D/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685873794; x=1688465794;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLg9QBJhk1oImNoGSDJiKswDbiKjTVpqU48w/ZpJGgc=;
        b=Jqmkt719EmqJawgEM2C+NEu8VJ4ZupFzyaJEXPXyBLcXMLpFkdIGVI4vK4Vk4vs2+h
         zUmhX2SrxzXn0OGAELk+0permG0Hm59wBdDZgP8ZO1JH3fdhBD9utevVADgdNyb6qJNV
         m1Cgz/o0bsem3vnJVd/z4uKQOEInWnIWFDpXrVDa5nrXJtKX0y37RzSWqMMW7hg6MzDW
         M3TqXT11SsC790QPjUG+Y6DB9BQJvRxU3nOrhwTuASiC+Zj/yb/BnNwLckE7djYyMwt3
         LnB75ngoyYnhUnK/8tMdQ3LY3UTuMwCD9zP+E8e6ZGz8eJhvHiND16RX32cTlSa0Sdri
         vpdg==
X-Gm-Message-State: AC+VfDwNSIVpO4WV1jcy/YoTU06tD2hhm0UP+wnR9WHavlcYi+SHtfh2
        3cDq/dfmwgv4zevHdPr6wf7uJA==
X-Google-Smtp-Source: ACHHUZ4YqYusxv/TXLHJE8KhbEgaiaOewFEXjb3jA7TtNsn/LlZwnZM1seDK3ppCp78H/qP/xit0KQ==
X-Received: by 2002:aa7:c2d9:0:b0:514:af52:e492 with SMTP id m25-20020aa7c2d9000000b00514af52e492mr5536683edp.33.1685873794033;
        Sun, 04 Jun 2023 03:16:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id bc10-20020a056402204a00b00510de087302sm2626887edb.47.2023.06.04.03.16.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jun 2023 03:16:33 -0700 (PDT)
Message-ID: <8c0b1e70-382d-669c-c0ee-438fada6e78a@linaro.org>
Date:   Sun, 4 Jun 2023 12:16:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: Add NXP i.MX93
 parallel display format configuration
Content-Language: en-US
To:     Ying Liu <gnuiyl@gmail.com>
Cc:     Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
        conor+dt@kernel.org, rfoss@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jonas@kwiboo.se,
        shawnguo@kernel.org, s.hauer@pengutronix.de,
        jernej.skrabec@gmail.com, robh+dt@kernel.org,
        Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com,
        kernel@pengutronix.de, linux-imx@nxp.com
References: <20230531093206.3893469-1-victor.liu@nxp.com>
 <20230531093206.3893469-2-victor.liu@nxp.com>
 <bd257ed0-71a7-0504-0bfe-14775ac93571@linaro.org>
 <CAOcKUNWkubMK1MJS73tpbm4bafQv2GAMuq_JOTFbvB9EVDRvxg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAOcKUNWkubMK1MJS73tpbm4bafQv2GAMuq_JOTFbvB9EVDRvxg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2023 05:54, Ying Liu wrote:
> On Fri, Jun 2, 2023 at 1:45 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 31/05/2023 11:32, Liu Ying wrote:
>>> NXP i.MX93 mediamix blk-ctrl contains one DISPLAY_MUX register which
>>> configures parallel display format by using the "PARALLEL_DISP_FORMAT"
>>> field. Add device tree bindings for the display format configuration.
>>>
>>> Signed-off-by: Liu Ying <victor.liu@nxp.com>
>>> ---
>>> v1->v2:
>>> * No change.
>>
>> How did you implement Rob's comment?
> 
> Should have discussed more in v1 about Rob's comment, but
> let me explain why this dt-binding makes sense here:

"It needs to be defined as part of the mediamix blkctrl
schema though."

Where is it defined in mediamix blkctrl?



Best regards,
Krzysztof

