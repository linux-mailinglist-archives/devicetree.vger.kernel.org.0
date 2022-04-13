Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A2594FFD6A
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 20:03:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234657AbiDMSFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 14:05:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237744AbiDMSFB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 14:05:01 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0173346171
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 11:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649872950;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=nJWkT3KWnGWrqppu3kqAfeI4Ej96CICMiq977YBg7eE=;
        b=UK9QBXdguONcjTHW4130FZOP6Htc7ZWeFWUSHSdz670VmPn1CrNTJgK1OYyeOMNymgtmzS
        l/R2sOqZX/D5GwL5vfD/GwW4kCwKwypOIr4NcDz2ATgurt07pfS7gJeJVriiA7uWJJqZQt
        pANjR7L1EbTbmWtf8Yurqk/mglZfrVc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-240-hxbpVHu1MquR24jJmafwkg-1; Wed, 13 Apr 2022 14:02:28 -0400
X-MC-Unique: hxbpVHu1MquR24jJmafwkg-1
Received: by mail-wm1-f71.google.com with SMTP id v62-20020a1cac41000000b0038cfe6edf3fso3148891wme.5
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 11:02:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nJWkT3KWnGWrqppu3kqAfeI4Ej96CICMiq977YBg7eE=;
        b=Kz0HI2hZUYYeaK+s678ejIJxn85eHbDwb54p1VGNEthtelNX8ZEZKMbItXkFY8Vf3G
         3jeWHy6a7PocR/aceW8RVwPKk3dWADU4NEcc9/6+KFed+JrOHeEq5hJ4TrkzhknUKYQ6
         Teb11PnHcXBtNMmtnCVShtfHUq/jOUADphue7N/I+OjWOfNnchnVbd/RQ4+tRvQL0+fX
         OozoUpjsWOorCTEzXSUbCa0VzsJHMZUK60BB2BKkf7wQ6X35vNZSMuhy4ZloLoMaIwph
         eUmWOnxn5TD4whEpej61jDBB/ickoquQpsbUE24nfb6Zq2n2QXL2GV+fAMhDZEAnFpg5
         TqAg==
X-Gm-Message-State: AOAM532yULtTnmIk0GRzX2gfrgTLeZSpcZ3n3seW3p+1b3ZCan1UKmhE
        DfmjkxChHzsusNlM6es1w4oacOkqCmj0MIE1SXMmwStWQEZVPsoml2RFp/Prh8XwU8eHIPrVsrH
        Wcfo28NBGTEzYdCe0zw0RJA==
X-Received: by 2002:a5d:59a3:0:b0:207:b776:7924 with SMTP id p3-20020a5d59a3000000b00207b7767924mr54739wrr.363.1649872947500;
        Wed, 13 Apr 2022 11:02:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvH1Xn8NYsnwMxq76QG9Rz4vg2r2qKIf9mBmAj8qsiBdVFiqoPbb1VQsA9a3+gGAnK5+WoNg==
X-Received: by 2002:a5d:59a3:0:b0:207:b776:7924 with SMTP id p3-20020a5d59a3000000b00207b7767924mr54720wrr.363.1649872947260;
        Wed, 13 Apr 2022 11:02:27 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id t12-20020a05600001cc00b00207aac5d595sm6816744wrx.38.2022.04.13.11.02.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 11:02:26 -0700 (PDT)
Message-ID: <e76a4599-8644-15f6-5d06-288caaa687c9@redhat.com>
Date:   Wed, 13 Apr 2022 20:02:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] of: Create platform devices for OF framebuffers
Content-Language: en-US
To:     Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Helge Deller <deller@gmx.de>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Sam Ravnborg <sam@ravnborg.org>,
        Guenter Roeck <linux@roeck-us.net>
References: <20220413092454.1073-1-tzimmermann@suse.de>
 <20220413092454.1073-2-tzimmermann@suse.de>
 <CAL_JsqK4oT47Q=XFTZ0a=g3-DiB1JsW7_j9M1qRzpeahhz0muA@mail.gmail.com>
 <b31df06c-6cce-37dd-5ec1-661fdc8151da@suse.de>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <b31df06c-6cce-37dd-5ec1-661fdc8151da@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/13/22 19:58, Thomas Zimmermann wrote:
> Hi

[snip]

>>>
>>>          /* Populate everything else. */
>>>          of_platform_default_populate(NULL, NULL, NULL);
>>
>> I'm pretty sure it's just this call that's the problem for PPC though
>> none of the above existed when adding this caused a regression. Can we
>> remove the ifdef and just make this call conditional on
>> !IS_ENABLED(CONFIG_PPC).
> 
> Together with the changes in of_platform_populate_framebuffers(), the 
> code is more or less an "if-else" depending on PPC. I'll drop 
> of_platform_populate_framebuffers() from the patch and make a separate 
> implementation of of_platform_default_populate_init for PPC. Seems like 
> the easiest solution to me.
>

That sounds reasonable to me as well. Feel free to retain my R-B tag
when posting v2.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

