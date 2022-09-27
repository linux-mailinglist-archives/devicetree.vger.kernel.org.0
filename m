Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1D905EBDF9
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 11:03:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231546AbiI0JDL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 05:03:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231387AbiI0JDF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 05:03:05 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA8C1AA3EA
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 02:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1664269374;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xy/vZrVEyKAC936wld9SdePzf0CNuc4X8kChnAdBCQk=;
        b=eMnlEZEV5iaKWvOmFmHf/KKYP1Oh5OgyN0dtYBD+n5r4ykYtBBfXQT2Mv1Uf41zZKBDhJB
        sJKKaB+PqmB+udxnLHM7v3VOX5BG49KNlwz7q8pngcpux5YtQEY0iZMRTod0ywIjGU1sJf
        VXmb2XU9uf1LZ/h3KQVJ8D18mJn49Zk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-675-SxWmjSFLO-KSgIB3JyfTzA-1; Tue, 27 Sep 2022 05:02:52 -0400
X-MC-Unique: SxWmjSFLO-KSgIB3JyfTzA-1
Received: by mail-wr1-f72.google.com with SMTP id f9-20020adfc989000000b0022b3bbc7a7eso1946130wrh.13
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 02:02:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=xy/vZrVEyKAC936wld9SdePzf0CNuc4X8kChnAdBCQk=;
        b=cLmgrMjyNZY2GiOjGxCQ8q+RsbQGm56G2pFJZ4XEc3zZuPqIlggUv/TtbTHZ1OBMOR
         wHagExyHyIUVusSY090OgA/ntXnNsEs5ILp3cOm1dpzC8LwDg86trFQ5GzlPmAqQsais
         UTk89tV6b226EMzy4B/+d986Bvp7ZQFuIbyAKmkC7LEj6jHKoPqbtWtR5cIkW4xuihyt
         RL4jcLIxecNQB1uQEd9NTCEFW63fTJ5Lq3OUJ3rX5OBHJBTOq5X8oFZrG8TJDBeZp1Hf
         mrtdzPuAzllHYG+lOyP4+e0P9X1XakJIfjZ+oyT8fzCRJqxA7zK1Te4Q2MXolPT/jO2x
         3e8A==
X-Gm-Message-State: ACrzQf1MWUklsGJBxuLTezc5AwSsCP7QzfpXpmPN/9LjF2DMILCY4PA9
        SopYK/7hSdTQN4cs8acYMwNc3FnAuYozu4ZLZqf1S6+M06De7sxtPvdH1UwO+7oN/NfjLeNH1OT
        L/os3a4de4KWVyOCOo3FLkg==
X-Received: by 2002:adf:dd8f:0:b0:22a:84ab:4be3 with SMTP id x15-20020adfdd8f000000b0022a84ab4be3mr15951101wrl.40.1664269371781;
        Tue, 27 Sep 2022 02:02:51 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6QQ+AHuQOmKI/6F1QjWVeqDfj9EhoRpgYUwRQU9fWumUC0o5Tf3aS3su5R3i29q/HGgpvQ8w==
X-Received: by 2002:adf:dd8f:0:b0:22a:84ab:4be3 with SMTP id x15-20020adfdd8f000000b0022a84ab4be3mr15951066wrl.40.1664269371478;
        Tue, 27 Sep 2022 02:02:51 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id r2-20020a05600c284200b003b2878b9e0dsm1116996wmb.20.2022.09.27.02.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 02:02:50 -0700 (PDT)
Message-ID: <2a3b6824-7a76-308c-c7a7-cc7c6001dfcb@redhat.com>
Date:   Tue, 27 Sep 2022 11:02:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [v2] drm/msm: add null checks for drm device to avoid crash
 during probe defer
Content-Language: en-US
To:     Vinod Polimera <vpolimer@qti.qualcomm.com>,
        "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
        "Vinod Polimera (QUIC)" <quic_vpolimer@quicinc.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     "dianders@chromium.org" <dianders@chromium.org>,
        "vpolimer@quicinc.com" <vpolimer@quicinc.com>,
        Abhinav Kumar <abhinavk@quicinc.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "swboyd@chromium.org" <swboyd@chromium.org>,
        "kalyant@quicinc.com" <kalyant@quicinc.com>
References: <1654249343-24959-1-git-send-email-quic_vpolimer@quicinc.com>
 <29ae886c-b2b2-2387-87cb-e4a885080418@linaro.org>
 <f70f9f1b-c835-7baf-974d-87f2bf6e4e53@linaro.org>
 <BN0PR02MB8173E3E88164E52AEF5AB1A1E4559@BN0PR02MB8173.namprd02.prod.outlook.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <BN0PR02MB8173E3E88164E52AEF5AB1A1E4559@BN0PR02MB8173.namprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Vinod and Dmitry,

On 9/27/22 09:31, Vinod Polimera wrote:
>> -----Original Message-----
>> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Sent: Friday, August 26, 2022 2:11 PM
>> To: Vinod Polimera (QUIC) <quic_vpolimer@quicinc.com>; dri-
>> devel@lists.freedesktop.org; linux-arm-msm@vger.kernel.org;
>> freedreno@lists.freedesktop.org; devicetree@vger.kernel.org
>> Cc: linux-kernel@vger.kernel.org; robdclark@gmail.com;
>> dianders@chromium.org; vpolimer@quicinc.com; swboyd@chromium.org;
>> kalyant@quicinc.com
>> Subject: Re: [v2] drm/msm: add null checks for drm device to avoid crash
>> during probe defer
>>

[...]

>> Vinod, do we still want to pursue this fix? If so, could you please
>> update it according to the comment.
>>

I don't think this patch is needed anymore, since AFAICT the issue has
been fixed by commit 0a58d2ae572a ("drm/msm: Make .remove and .shutdown
HW shutdown consistent") which is already in the drm/drm-next branch.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

