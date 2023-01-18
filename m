Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24572672508
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 18:33:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbjARRdu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 12:33:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbjARRds (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 12:33:48 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB7E03C22
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 09:33:47 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id s3so12463998edd.4
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 09:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ImHsz1vVdegFMpmakiwYwX9gfkh5hZYPKqkDH5mjj9o=;
        b=WqT11iD1Dkg5src9oPrvWTypTDCnXl+C+m3RQJF5YRCM8PgGqCjIVkfyUFez6ilk7H
         7Q6QcciZUMJqPFVR6XRvM/vEdj3VwjoG3ze5tl2H7X18fREneQ0fDwadZBKMCgwDsfDA
         KhnVpdSQzXU9ytd4l0mB+IvJaAKS+MzxEvulE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ImHsz1vVdegFMpmakiwYwX9gfkh5hZYPKqkDH5mjj9o=;
        b=kSBtO6qdoVCwz9XVM02KQXAj6qke0oitnfiyjhQOsnLI3VUQDtUDljMK8jd68eqd1D
         BUs4qomeMaybXviWo9PlNefI7YCk9i34PK96Nib8OKJpMbvXQ0A1GrUPC6Rggq+d4Q5u
         yUxitBK6o/2Z2sThqmy6e5a+/8kfAPBVPo7xDSe+S4sWY4g+ab+ZK/FD3JZmgieE5mxP
         RDEBI3uRPzAiqSFgtztQ+6eqgMNEMV0YIE0K2TksYEP50+4Rr/t1cPDPpdk8X0z/zlnX
         4jATEQfVjXRUmi9kdJenXb/uIbHhU8mW2DKbWVYac1al4VXgNiU8+OOeYgR1E9Oy9rgd
         x/yQ==
X-Gm-Message-State: AFqh2koE/XOagH/Ts0zY5P4ibfIkkpuFctMkbHHXtVf6GJrzJF0k1lP2
        J6pIlpwPkEIomeXINkjdTh4ayFFtz2nXOuCOf7sLatJmLF1zGw==
X-Google-Smtp-Source: AMrXdXvw7Lfi43z8H6qZTlKZ20XsuRIRREPbdawIweceYQnx4V9Ji2qpyWV1JJTAX/R5Rmu02VARQ1h6M5voJTsogE8=
X-Received: by 2002:a05:6402:2990:b0:48a:5f4c:c1a with SMTP id
 eq16-20020a056402299000b0048a5f4c0c1amr752100edb.298.1674063225563; Wed, 18
 Jan 2023 09:33:45 -0800 (PST)
MIME-Version: 1.0
References: <20230113205518.206306-1-sjg@chromium.org> <20230113205518.206306-2-sjg@chromium.org>
 <CAPnjgZ2d==x1uLCRFJg44Us=UzyAGCst2LzTx=d=xyN+OQHVhw@mail.gmail.com>
In-Reply-To: <CAPnjgZ2d==x1uLCRFJg44Us=UzyAGCst2LzTx=d=xyN+OQHVhw@mail.gmail.com>
From:   Simon Glass <sjg@chromium.org>
Date:   Wed, 18 Jan 2023 10:33:34 -0700
Message-ID: <CAPnjgZ3pMfY6wh6h8hpcAh7v87AqSSa2jTFtEjupdaVjjCz-wg@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] schemas: Add schema for U-Boot driver model 'phase tags'
To:     devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>
Cc:     Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+U-Boot Mailing List

Hi Rob,

On Fri, 13 Jan 2023 at 14:00, Simon Glass <sjg@chromium.org> wrote:
>
> Hi Rob,
>
> On Fri, 13 Jan 2023 at 13:58, Simon Glass <sjg@chromium.org> wrote:
> >
> > U-Boot has some particular challenges with device tree and devices:
> >
> > - U-Boot has multiple build phases, such as a Secondary Program Loader
> >   (SPL) phase which typically runs in a pre-SDRAM environment where code
> >   and data space are limited. In particular, there may not be enough
> >   space for the full device tree blob. U-Boot uses various automated
> >   techniques to reduce the size from perhaps 40KB to 3KB. It is not
> >   always possible to handle these tags entirely at build time, since
> >   U-Boot proper must have the full device tree, even though we do not
> >   want it to process all nodes until after relocation.
> > - Some U-Boot phases needs to run before the clocks are properly set up,
> >   where the CPU may be running very slowly. Therefore it is important to
> >   bind only those devices which are actually needed in that phase
> > - U-Boot uses lazy initialisation for its devices, with 'bind' and
> >   'probe' being separate steps. Even if a device is bound, it is not
> >   actually probed until it is used. This is necessary to keep the boot
> >   time reasonable, e.g. to under a second
>
> [..]
>
> Unfortunately I still don't have the hang of this schema validation. I
> would like to do this:
>
> $ dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -m test.dtb
> test.dtb: /some-device: failed to match any schema with compatible:
> ['vendor,soc1-ip']
>
> but I don't get any errors when I manage test/bootphases.dts e.g. with
> misnamed properties.
>
> I thought I had this working, but that was back in November. What am I
> doing wrong?

Any thoughts on this and the patch? I would like to send a PR but it
seems sensible to sort this out first, since it may mask some
problems.

Regards,
Simon
