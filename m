Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6EC74E67DA
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 18:34:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347548AbiCXRfn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 13:35:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243701AbiCXRfm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 13:35:42 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9D5524338F
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 10:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1648143249;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=q+tZCzVkHI1lWHeqsejJ8HFCo9e3pbw5CAKPMA1Q5wk=;
        b=WddxyyUan36EdOemLRuseEGGprjFLkzcNDIruzmW2X2/xTx0iLL0hHRzwi4aL+uO/EeAMZ
        LcjYGwGxWxZwIql5w6AK1l9H3WdpYb/1Autf31jzdrnyTC5skkyjpcHB7eIsxtpNgpuPdo
        lHG3SEOL9/qM61x4sfkmYOf8UhsxGh0=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-360-l4GGGj8IPjmhryFx9yhXvw-1; Thu, 24 Mar 2022 13:34:08 -0400
X-MC-Unique: l4GGGj8IPjmhryFx9yhXvw-1
Received: by mail-qt1-f200.google.com with SMTP id k1-20020ac85fc1000000b002e1c5930386so4216921qta.3
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 10:34:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=q+tZCzVkHI1lWHeqsejJ8HFCo9e3pbw5CAKPMA1Q5wk=;
        b=AZrQORitFrE1bp+79nXPvk4cMSsCUBCwejhDsI2b+Bgkzhw/VpGHxqtzIoxulapUjG
         OPLThsr7Oal64pFc3NFNitVAQstKBM/4ld2XyhmiqEkl6btbhI0pKunBIX8khbaDFAsN
         +HtR9VT2f5HS5xhHRE2fn/2XAUVIFPODB/r7d1SekVSP0Z+kLtjx2ZGF/LCcbp7gcMs0
         upMMfEEcOR+NM8gtLcatyLsvjy+fIifpZKidj9qXPsjsNTsWagh1/7I1MhcPgg4t3PC4
         5eDEE2i0AsjIlBDrrtCCi/G+Up2M27oF43IDxyxe2+Lv84t4pU3b7/Rr8s/zAcmO8tRR
         p9PA==
X-Gm-Message-State: AOAM531vZ8ksadltuJMfD7abWW0V+4pEdRWKC/4SjZ94oMQCOACwdXpV
        XqJcqIJAcPEj4wWdPdPjx7Nz54tBJjtlMnosMHspCYc4OvOI8uE54OSbWjIxkpewzs1STH4E7jB
        bKVb8WIYkbQ/ia5dKIHoolA==
X-Received: by 2002:a05:6214:5010:b0:440:ec82:3d1 with SMTP id jo16-20020a056214501000b00440ec8203d1mr5414193qvb.3.1648143248188;
        Thu, 24 Mar 2022 10:34:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw1c7saTzRhez2nyqWBlDRqgtmNx/Secoc+3AdHUlhTu+bP36hmtkPIo48+YvJm3+Xxi40f0Q==
X-Received: by 2002:a05:6214:5010:b0:440:ec82:3d1 with SMTP id jo16-20020a056214501000b00440ec8203d1mr5414174qvb.3.1648143248027;
        Thu, 24 Mar 2022 10:34:08 -0700 (PDT)
Received: from fedora (modemcable200.11-22-96.mc.videotron.ca. [96.22.11.200])
        by smtp.gmail.com with ESMTPSA id b202-20020ae9ebd3000000b0067b11d53365sm1830857qkg.47.2022.03.24.10.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Mar 2022 10:34:07 -0700 (PDT)
Date:   Thu, 24 Mar 2022 13:34:05 -0400
From:   Adrien Thierry <athierry@redhat.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Gaston Gonzalez <gascoar@gmail.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        linux-staging@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: soc: bcm: bcm2835-vchiq: Add support
 for bcm2711
Message-ID: <YjyrjWgUQ8UeLM/r@fedora>
References: <20220315200929.74952-1-athierry@redhat.com>
 <20220315200929.74952-2-athierry@redhat.com>
 <YjtqnktIHajn8skP@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YjtqnktIHajn8skP@robh.at.kernel.org>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

> Why do you have the same compatible twice?

Sorry, I misunderstood the yaml doc fields. I submitted a v2 that fixes
this.

Thanks,
Adrien

