Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D8A15570D5
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 04:02:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377348AbiFWCCx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 22:02:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233881AbiFWCCw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 22:02:52 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAD1B33F
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 19:02:51 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d5so16885178plo.12
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 19:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IkUXOkZY+RAO77Ddayq7n78HFolbGi4/R0jnJleOuts=;
        b=qDK6Y2htLz5tGUO8dlBrbHGhH2ak1LdI/hhL1515H8H1TbHNDPwLGrlnYvtaUZD4Ee
         pzSzmhi4Y3Uo/RXxHGB0q1QNITi7OIyRgpfryOB1pa6UcqhAIwgV9o/uNGJkHsO0lRC4
         tYZiDAAhjSHcQBJ7+Xy18N89yk3C6i637j5lFNnGQF7vQcvruPTz5Zy3EcQK8+ySUlut
         NRwmRkoZtzgkHBZS2YobjTLz9cfj8KQ7+SOvwZ3OHyLBT7baBxSm5/ZDS8qIGh6+Exzp
         aKlWrYBQfWjnckgnk8Ei4Ockh0NSwLeR3zv8c4Ht/amHjUbgFqY4W4bu83+6cPj/1TOH
         rxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IkUXOkZY+RAO77Ddayq7n78HFolbGi4/R0jnJleOuts=;
        b=EXw7cvrA2uooxZDc+HmCSnBJbX/LdoVG55WLewLwauw4zFo7j2ldaepcB+ttJUuY56
         kG+HvnCHaY7p3hrWL+GQbBflMzNTIYEVjDn4I6Giw3DaE9ELaIYYsYxO0imohivpmvXu
         yljk2KW9YQm2Vm9M2rLGkN5EnAbA7ubYoeS0fomrymOr0WOu9UR5yY6Rc6qGzdYdOEPS
         J81j369IHs6OvqVC7L4Ho8R4yJL8NjXz/tXQz0zV7yaTl8V9kOTmy9t45G3pqqNSscjz
         +/bNUs7Qrp9/GEVdbAxcrNqpMPI35bNIodB4/XtLlIytNul7UkDPGfgMLNNVZZmhOcrn
         r6dA==
X-Gm-Message-State: AJIora8eHO/hkFDUDZmogljX1qcuYIiDVNiyjMUm66R69MHWc2UZnaMB
        piEWQmPNSBgTjdm8V1QZ41c=
X-Google-Smtp-Source: AGRyM1s7kxNWni7pQ32zWh2Ta+Ryow6AIKvy28d/OqwdaavSHxp6PHVAI7kpSx+SGWO7NiY6cvMufA==
X-Received: by 2002:a17:90a:fe16:b0:1ec:a69e:d135 with SMTP id ck22-20020a17090afe1600b001eca69ed135mr1434133pjb.31.1655949771260;
        Wed, 22 Jun 2022 19:02:51 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id k10-20020a634b4a000000b0040d48cf046csm517078pgl.55.2022.06.22.19.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 19:02:50 -0700 (PDT)
Message-ID: <b45bf51c-cb34-b15b-d8ef-db9b409a8130@gmail.com>
Date:   Wed, 22 Jun 2022 19:02:49 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH V3 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
 <952d541b-6b41-3db6-3ea0-efd5eab612a7@gmail.com>
 <da127e9e-c79c-2a92-02c8-82811dfe44b0@broadcom.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <da127e9e-c79c-2a92-02c8-82811dfe44b0@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/15/2022 10:38 AM, Florian Fainelli wrote:
> On 6/8/22 02:27, Florian Fainelli wrote:
>>
>>
>> On 6/7/2022 10:42 PM, Stefan Wahren wrote:
>>> This series is a split out of version 4 - Raspberry PI 4 V3D 
>>> enablement send
>>> by Peter Robinson [1]. It attempts to enable BCM2711 V3D support for the
>>> power management driver. It's a rework of the less controversial changes
>>> (excluding V3D GPU driver changes) so this can be reviewed and 
>>> applied faster.
>>
>> Lee, can I get your Ack so I can take all of these patches through the 
>> Broadcom ARM SoC pull requests for v5.20?
> 
> We still have some time, but can I get an Ack from you Lee in order to 
> take these patches through the Broadcom ARM SoC pull request for v5.20? 
> Thank you

Lee, can you please review and Ack the MFD patches so we have a shot at 
getting this into v5.20? Thank you
-- 
Florian
