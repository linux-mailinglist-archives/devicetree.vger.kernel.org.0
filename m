Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5ED4F8141
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 16:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343663AbiDGOGC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 10:06:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiDGOGB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 10:06:01 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3ECBBE09A5
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 07:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649340240;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=8dmlhw2gM3dighZKD1hw4c9m67LEmQRFc8UEGhxCeHA=;
        b=ABtSafK/E3WPndrRSRq5TIMQk5v7k+s81fUZfv8hukdPIA5bH+HX/677ZZUvyQv+Ee8hAr
        AQY2M4gyqhEVw6hvKU9bW2pQkUtz/ETU16+h8LNCX/CKfTzVfGpzQN5GsmtZFagaqv+7DH
        s3H/Ar+nSIrZTX30qQpxr8Eq5MHQ6V0=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-407-7800i6xlOr-uapfTzLBagQ-1; Thu, 07 Apr 2022 10:03:59 -0400
X-MC-Unique: 7800i6xlOr-uapfTzLBagQ-1
Received: by mail-qt1-f199.google.com with SMTP id f22-20020ac840d6000000b002dd4d87de21so5499199qtm.23
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 07:03:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8dmlhw2gM3dighZKD1hw4c9m67LEmQRFc8UEGhxCeHA=;
        b=lrs3oQFgGpapNmHJJ6mcjpBD9kPTD8aHmKnypOJaBqgt5Cn1bMLoqfSMFpG0A+Oj14
         Q4DjCqER1M17QHdqxepsfF6uOhnnMiE+Aw8isjQH9ClF9XMlWTz6XtmbN4ICsi3AXxsi
         Wip/3OEaTOFxBCRLm1iBAwPb/B0htHOQY0VNYsXuvuKG4bj3X/RXpv7nh2Uza2mdutFk
         8UWJ/N4RWgv77IiUKKPf4+kkZGSHLp8Q21KcuV3NEFfgVmMZjgMgSUACUCIQTzgJgcE4
         Vdy9N4Ujw63C2Obi5RXfP5O7ylRcRQm0N3gDPuujenoJFZMRTrSCwhEawEPvtElyO9j/
         1EPQ==
X-Gm-Message-State: AOAM532ZFj1Fzi18aCLZ9xJpD173K0bk+7KmQTbNFZNRISAC+4yLL7Bt
        aNYaAOjV7fb6oYQguDXdIpSWvscM9eD+3fXqmSw7MPuUUn3OeNMQd8EnMhbzmdwsoFuE43sVgFv
        zF1T5YYqaeElRJmA8kjGB4g==
X-Received: by 2002:a05:620a:424e:b0:67e:4c1b:c214 with SMTP id w14-20020a05620a424e00b0067e4c1bc214mr9398813qko.651.1649340238615;
        Thu, 07 Apr 2022 07:03:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeuhfUl7E5olUFie0FR1INlu5Q2ZTtT17yGQlnofo6l7qsijU3A/ijXWkDpwqeMJySvpGrYQ==
X-Received: by 2002:a05:620a:424e:b0:67e:4c1b:c214 with SMTP id w14-20020a05620a424e00b0067e4c1bc214mr9398784qko.651.1649340238357;
        Thu, 07 Apr 2022 07:03:58 -0700 (PDT)
Received: from fedora (modemcable200.11-22-96.mc.videotron.ca. [96.22.11.200])
        by smtp.gmail.com with ESMTPSA id h6-20020ac85e06000000b002e1e8a98abbsm16006501qtx.41.2022.04.07.07.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 07:03:57 -0700 (PDT)
Date:   Thu, 7 Apr 2022 10:03:55 -0400
From:   Adrien Thierry <athierry@redhat.com>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Gaston Gonzalez <gascoar@gmail.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        linux-staging@lists.linux.dev,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 0/2] Add support for bcm2711 in vchiq_arm
Message-ID: <Yk7vSzk2XD+55EK4@fedora>
References: <20220324172647.167617-1-athierry@redhat.com>
 <d20fd8f2-c47a-2f3e-4efa-be705f1517b9@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d20fd8f2-c47a-2f3e-4efa-be705f1517b9@i2se.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

Thanks for your feedback.

> Could you please explain your approach, especially leaving out 36 bit
> DMA support?

I realize I overlooked this 36 bit DMA support issue, I need to think it
through a little bit more.

> This is a really bad idea and caused a lot of trouble in the past. A lot
> of the issues in the Fedora or Arch Linux forums or mailing lists
> results from this idea. It wastes the time of the kernel developer since
> these DT files has never been reviewed by the devicetree maintainers.

I understand, thanks! I find the downstream dtbs convenient because of the
overlay system that allows you to easily enable certain drivers, but I get
your point.

Best regards,

Adrien

