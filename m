Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78C8354D26C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 22:19:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235229AbiFOUTV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 16:19:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245562AbiFOUSk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 16:18:40 -0400
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F40E3BBE6
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 13:18:40 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id q11so13846867iod.8
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 13:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xQh+eTwTpmaPBadAs7RFq9z38Ba2vaFoSOGMFjdUoUI=;
        b=442ONQhH9MBjK1VfRgZt06i4DRGCpjzIF169qu/tBXUBScQvzfuZ/9gIjWufD9MIeh
         fn0FZU/JSB/PofPJl56jlm7FDghI9W6gJ3x7aLolySslLo6YGyl0S/rW4/Mn5sXILREp
         Pkf4ydC4AwOxt/QVUVXDrvi4JCgKk9MTTw4/V5vUjl9FZHaezHU0xPQoE/fSpBAdcOe0
         QvRoDlpvywfRO/BCz4dkaWFTIO6wIDqvMgNONN38nVFBPPA7rrs1fM1Qzq0J1hieM7yD
         g5dTqG68rsYISMFqwRxBJsvuq0a73UoUg7UbVzJsmxHcC8nuMR2MBZOQk4eb4/zdF+jx
         6WNQ==
X-Gm-Message-State: AJIora9l1RPw3sNb/3r1UuyMHdNkBRvqcun6OSjvPi/CyEs0QZ8lK8Ax
        u1TELU5FQxVSBj1D0YliKg==
X-Google-Smtp-Source: AGRyM1vQzvutwoc1umkK9GLIslUbs5YXYG/HUfAQts8IDiFqTuJ5brxnfo7A8Z1wYlqwjLFA8zaznA==
X-Received: by 2002:a5e:8a44:0:b0:66a:2699:df20 with SMTP id o4-20020a5e8a44000000b0066a2699df20mr717743iom.205.1655324319349;
        Wed, 15 Jun 2022 13:18:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id a21-20020a056638019500b0032b3a7817dbsm6584499jaq.159.2022.06.15.13.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 13:18:38 -0700 (PDT)
Received: (nullmailer pid 1740660 invoked by uid 1000);
        Wed, 15 Jun 2022 20:18:37 -0000
Date:   Wed, 15 Jun 2022 14:18:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stefan Berger <stefanb@linux.ibm.com>
Cc:     kexec@lists.infradead.org, devicetree@vger.kernel.org,
        Nayna Jain <nayna@linux.ibm.com>, nasastry@in.ibm.com,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Biederman <ebiederm@xmission.com>
Subject: Re: [PATCH 2/3] tpm/kexec: Duplicate TPM measurement log in of-tree
 for kexec
Message-ID: <20220615201837.GB1525994-robh@kernel.org>
References: <20220614161258.1741427-1-stefanb@linux.ibm.com>
 <20220614161258.1741427-3-stefanb@linux.ibm.com>
 <CAL_JsqJG4MJHeu+7Ar0jWi-W6P01_EFtwiz56m_vtVy39uMtiw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJG4MJHeu+7Ar0jWi-W6P01_EFtwiz56m_vtVy39uMtiw@mail.gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 14, 2022 at 11:48:30AM -0600, Rob Herring wrote:
> (),On Tue, Jun 14, 2022 at 10:13 AM Stefan Berger <stefanb@linux.ibm.com> wrote:
> >
> > The memory area of the TPM measurement log is currently not properly
> > duplicated for carrying it across kexec when an Open Firmware
> > Devicetree is used. Therefore, the contents of the log get corrupted.
> > Fix this for the kexec_file_load() syscall by allocating a buffer and
> > copying the contents of the existing log into it. The new buffer is
> > preserved across the kexec and a pointer to it is available when the new
> > kernel is started. To achieve this, store the allocated buffer's address
> > in the flattened device tree (fdt) under the name linux,tpm-kexec-buffer
> > and search for this entry early in the kernel startup before the TPM
> > subsystem starts up. Adjust the pointer in the of-tree stored under
> > linux,sml-base to point to this buffer holding the preserved log. The
> > TPM driver can then read the base address from this entry when making
> > the log available.
> 

> > +{
> > +       const u32 *sizep;
> > +       const u64 *basep;
> > +
> > +       sizep = of_get_property(np, "linux,sml-size", NULL);
> > +       basep = of_get_property(np, "linux,sml-base", NULL);
> 
> Any new properties need a schema. For chosen, that's located here[1].
> The more common pattern for similar properties is <base size>.

I noticed these are already documented and are TPM node properties. I 
was thinking these are chosen node properties. Though it would be good 
to get these common TPM properties converted to schema. That can live in 
the kernel tree.

Rob
