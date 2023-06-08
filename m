Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D0327277F9
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 09:00:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235133AbjFHHAZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 03:00:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234957AbjFHHAU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 03:00:20 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBDC226B8
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 00:00:18 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-977ed383b8aso52327266b.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 00:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686207617; x=1688799617;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+VCYQ0Vq8Rf6ius+6VmSoJHA+8MpI2G4Z5DYwrvA2w0=;
        b=gT5J/WnKL6bPKZtMDM0WF70NGnKhfxOX30KwqIV0lfYTwjVng5Ke0xgwxOEJULD6MK
         Lgf0teDYptJs0TaXdNmSJN+dKsZoFd8JUcfWVBob+KeGJ7oQeqMJ9WcfSmq7oGFsGLxr
         4irYaNprpTOLvFtGPVOkL14vE0pPVRE0QMW2JdRjVAQ29zp7L7dNg3eIULwYODZoqPoo
         GTrW7VMuyM9kV67sLILcPNqzlyqWQmbWdHhNuSE2U4474CmVf+2yYbzzXQb0Oma/7OhB
         wwGcFkw8+ZnXmyw9fA8WmDxJP4UHC5lLEdRR64KaXXqLuv1FVBugpbu7zcHPEAspxzN4
         c3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686207617; x=1688799617;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+VCYQ0Vq8Rf6ius+6VmSoJHA+8MpI2G4Z5DYwrvA2w0=;
        b=G8ssm2Okb+I6+XZ67ikeNGREYD8Oc958Oa0bqQwDcJYWJMYhJWuJYKWBmokcZuZ4Px
         uvLDLm4zwpU/FMLjXC2FfjhqrlbPvl7QhslyKcqryioQPMdMeBNPGcNg0IuLCm4fLvpq
         H0qXlC/N5DAfQ3wPVHLK4QBJf+aKo2F3O375azfcCXQMTleKcRD4EypmSAD/iNd89joG
         0ezVKJn0ws/By6yM0AFd2aKaEtfrMyyjUcKpyyry9YU4hsm7bXlDMbP5UPqtaSA/zz49
         6Giq8pTOq3cl8l+nnOeY2CWzLz6CKEhPRcPxfQCenStnN5DsxeWwgqcUHQFowoHeqdGO
         6ocQ==
X-Gm-Message-State: AC+VfDwg/49yMkzOqB+nGE/fnbi0MqdAAFGJTo31xsgFb4oTcqRWNnsd
        6nT7nZvqBUI0xCJr1f/MYhTMFg==
X-Google-Smtp-Source: ACHHUZ493r0raQo9iLcIeZCRDNBkBWvXhgo1i70ZDsHouZkiTOZ1xbXiIw0DC6QAuKQHWQwMhf2A7Q==
X-Received: by 2002:a17:906:9753:b0:968:1e8:a754 with SMTP id o19-20020a170906975300b0096801e8a754mr7610497ejy.72.1686207617176;
        Thu, 08 Jun 2023 00:00:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id w8-20020a170906b18800b00965a56f82absm281860ejy.212.2023.06.08.00.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 00:00:16 -0700 (PDT)
Message-ID: <0d4d77db-3d09-a5ab-b3e6-93da771b4b2d@linaro.org>
Date:   Thu, 8 Jun 2023 09:00:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
Content-Language: en-US
To:     =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= 
        <stanley_chang@realtek.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Michael Grzeschik <m.grzeschik@pengutronix.de>,
        Mathias Nyman <mathias.nyman@linux.intel.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Ray Chi <raychi@google.com>,
        Flavio Suligoi <f.suligoi@asem.it>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
References: <20230607062500.24669-1-stanley_chang@realtek.com>
 <20230607062500.24669-2-stanley_chang@realtek.com>
 <79201bd6-6048-7013-aeb7-34d218139844@linaro.org>
 <8cb2d82c3b484262aa866c5e989fc8cd@realtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8cb2d82c3b484262aa866c5e989fc8cd@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2023 08:59, Stanley Chang[昌育德] wrote:
> Hi Krzysztof,
> 
> 
>> I commented on your second patch, but everything is applicable here as well.
>> You have many useless debug messages. Many incorrect or useless
>> "if() return" which point to broken driver design (e.g. concurrent access to half
>> initialized structures where you substitute lack of synchronization with
>> incorrect "if() return"). Undocumented user interface is one more big trouble.
>>
>> I doubt you run checkpatch on this (be sure to run it with --strict and fix almost
>> everything).
>>
>>
> 1. I use checkpatch but without --strict. I will add it add and check again.
> 2. Do the debugfs interfaces need to provide a document?
> I don't find any reference about this.

debugfs interface is for debug but in your case you don't use it that way.



Best regards,
Krzysztof

