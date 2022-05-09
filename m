Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B417C51F5C1
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 09:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233255AbiEIHlg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 03:41:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236199AbiEIH1E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 03:27:04 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAAC1F27
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 00:23:09 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id z19so15177745edx.9
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 00:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=yh41zgnvY6/e7rd+RKrkrzj1vifp0kaAvEwbnIHLMjc=;
        b=KQpoKsPG1Cr0vVlAeQP5epvMisubeLvtfvlzwlp4LwBIZaVem9j9Kql6ZY/EEqpZ0t
         LnCZEj1f16BmSYYxf1ReN4Mnpc6gz574IbAeL3dXsn1t82ItSLnF+I2k+WnCUSViWPWG
         P8Nh6RA3X1JxWOm+0jw9AJ2umv57ewK6fJqkDRu4ZdOqupbVuibC/sRJzo9vBYxvIKOj
         icodQpuyWNKpkIR5GocQDmBzCFU/d5QEImd62IVRnN36cwyYYM51PnGBsHeDbeayXqwB
         MFsH03Yp0XTNuyXTU124IKF58ev/tHGoIJWXanTcTXE9Tb85jJrSzF4rq/3TghOyafz1
         5Fiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yh41zgnvY6/e7rd+RKrkrzj1vifp0kaAvEwbnIHLMjc=;
        b=uwUyZUEWlUnBFMFdHvKqwauSBvazO+KSHUvLhakjtTKtta0GLiZadx8BSkIzJSD6zT
         GFJ8eWJaqX1d2eSCLUUF9v9hmRNIpmKm0CCQKFAy4qXvWmtD2V/F5i+ybBvTN0sBYCjz
         E1zDJN1lzy9Mo2zX2QAUPMtgWw7JSGKOfMWq8ijaKu0zNR8glrYJppwdVvf90Slw5aPB
         triDUPCoYzcPw+ypQoBablfui0qFTOvMV9MAgkbbBFmFDO9BJdIcizBlfUOeyU1UNdu8
         ZcMmUD7BqvBq/fs8IXA9m78njqheg97uRtCUXeG1Rg3603Rt8k/0qIVp9/vkeOjK0npc
         tAoQ==
X-Gm-Message-State: AOAM532qyJcMC5Vs3RiBVD+0etcFusvGqm9xvjO2wutwfbCEj3tnzcON
        Y/c5wdCgkpLx3Py9HPtKV125GQ==
X-Google-Smtp-Source: ABdhPJzq1dmrlLw9p3X4mAViSn0SPqXS55XG6DN2M8/VazgVx59OnsR6l5xHrOKvSk26BivZqTjLHg==
X-Received: by 2002:a05:6402:2291:b0:425:deb5:73be with SMTP id cw17-20020a056402229100b00425deb573bemr15667701edb.392.1652080988098;
        Mon, 09 May 2022 00:23:08 -0700 (PDT)
Received: from [192.168.0.242] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jx21-20020a170907761500b006f3ef214e29sm4842379ejc.143.2022.05.09.00.23.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 00:23:07 -0700 (PDT)
Message-ID: <eee2d4f6-703d-d3bb-3949-493f9d65f676@linaro.org>
Date:   Mon, 9 May 2022 09:23:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 3/3] arm64: dts: intel: add device tree for n6000
Content-Language: en-US
To:     matthew.gerlach@linux.intel.com, dinguyen@kernel.org,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20220508142624.491045-1-matthew.gerlach@linux.intel.com>
 <20220508142624.491045-4-matthew.gerlach@linux.intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220508142624.491045-4-matthew.gerlach@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2022 16:26, matthew.gerlach@linux.intel.com wrote:
> From: Matthew Gerlach <matthew.gerlach@linux.intel.com>
> 
> Add a device tree for the n6000 instantiation of Agilex
> Hard Processor System (HPS).
> 
> Signed-off-by: Matthew Gerlach <matthew.gerlach@linux.intel.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
