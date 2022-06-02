Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0421B53C12B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 00:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239850AbiFBW5E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 18:57:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239868AbiFBW5B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 18:57:01 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4DE8CA44E
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 15:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654210613;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=AR9SMdcMDUd1n5J8KIgwt5SyKjRipu7kR5XFiqc2xKU=;
        b=dKsZO3vbNmZDlHl6BpCms1zaiQhcmeI2luvmq0Rjx4btRf7BCEub+Vao9+QT48/iKHd4LO
        LBjIDhqn5bBLwHGkN8zD9lYEwURrYNcnlo7mkN+UmVUuetp2cWItd6hOcng+JcU51a2nTt
        Veav0kIKCf3Xzj8O3d/oVUFbXLaUD5s=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-t09QL6qLMoeAHOaaFEEriA-1; Thu, 02 Jun 2022 18:56:50 -0400
X-MC-Unique: t09QL6qLMoeAHOaaFEEriA-1
Received: by mail-wm1-f69.google.com with SMTP id u12-20020a05600c19cc00b0038ec265155fso5818812wmq.6
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 15:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AR9SMdcMDUd1n5J8KIgwt5SyKjRipu7kR5XFiqc2xKU=;
        b=qUbkfZpO3/DhcbsR+O3i6jMAYcL/PJnx0Iyz7/OocrnRnsirZHRsljVAM7NJPEAznN
         CkdaG7fhvEUWWTFUUm+yfWfbpJ6moOIiY917ju4gteer132KVNbCa4myOSMA1wuC9V2T
         Us8Q2sq0wMDF/e1FVUcvpwftuZNm+dpV9Lwu+bfOZdx1Dc21OJ7Yp1nCTHUy5rocBzYW
         gNAYYQF4AdWQo6JvMrcQ3bBEDfjMFzJWcvz+oSU2A26t8RWamZxLoTFVda13+Xgnz/eT
         RJ0w1fJkRR9Vqx6HFI3yQvR9sd8Tv1Jm6GcZeiIJaJ7KnkJZrBeMDPoKtikwWSve2Z/X
         RRMA==
X-Gm-Message-State: AOAM533ZWVjlMnuNXJu4oOen0veUVg+TlDgXIjV8q+tZM84RX8gsdX/H
        7+F4BF6iGu98MDUjfewA+0/4A+6EZgGDlT9LKdyOLpazOVr5AvvH983wpumKPrgFBKEiFK22zVl
        2MMIS+mju/ZdvofrZdsucng==
X-Received: by 2002:adf:e19e:0:b0:211:7169:dfa6 with SMTP id az30-20020adfe19e000000b002117169dfa6mr5499542wrb.654.1654210609757;
        Thu, 02 Jun 2022 15:56:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZWV8zk+ILUpdg/oTcVIqrtQc9+EAsiqEAnLJaGY7v3qdGxO1+UG7rTBnoRuEDL10V/hcluw==
X-Received: by 2002:adf:e19e:0:b0:211:7169:dfa6 with SMTP id az30-20020adfe19e000000b002117169dfa6mr5499530wrb.654.1654210609546;
        Thu, 02 Jun 2022 15:56:49 -0700 (PDT)
Received: from [192.168.1.129] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c16-20020a056000105000b002100aa69469sm5600188wrx.2.2022.06.02.15.56.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 15:56:49 -0700 (PDT)
Message-ID: <add515d2-77b0-546a-3fd1-242d9f2e8ac0@redhat.com>
Date:   Fri, 3 Jun 2022 00:56:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v5 1/6] dt-bindings: gpu: v3d: Add BCM2711's compatible
Content-Language: en-US
To:     Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
 <20220601110249.569540-2-pbrobinson@gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220601110249.569540-2-pbrobinson@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Peter,

On 6/1/22 13:02, Peter Robinson wrote:
> BCM2711, Raspberry Pi 4's SoC, contains a V3D core. So add its specific
> compatible to the bindings.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

