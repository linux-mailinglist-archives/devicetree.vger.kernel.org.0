Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F08AF4F1A73
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:16:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378946AbiDDVSa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:18:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380597AbiDDUkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 16:40:00 -0400
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAB6C25EB8
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 13:38:03 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id e189so11272086oia.8
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 13:38:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZeHQbP4Za/uvfCIBA2dbsM/xO5TyI+xGCQotnDoe33Q=;
        b=G60Coo7nVHrIHzqGdmCck2jRtkfndaLzybXeud3cppiXFoQup9C06RaU4LTywXixzb
         Yv4j339TXRneMYwzgnEEW+ozeH9936G7gPTUhnB38IObduk4WRpu3E9bGCLIk/JWnWwP
         rSgFUX5Dm0sGOC6Uq1y4dnhGyqk8GNONUAi3yI2ORG2r0f/MmY41L5NzgKLy/DyTv+oG
         I8lZ5d9sMTRRjlym1Cq//u6C0boS1Vj4pkY1JVk5edTvpGNM0jPW4vyQL7v7X0Vv1Zim
         nfoYquZx/2E9GITMD8VC0d0lvwbdO1XXGEu3r+Mo7s6jdBxFBlqRQx4RlOSKUdZ41ulw
         n3CQ==
X-Gm-Message-State: AOAM532gGPlBLfjg5acElOR3PF117T4qqLQUVBnJr181I6lbYUg1aWf7
        6kZpiWV85Ai55RHYOrrmPg==
X-Google-Smtp-Source: ABdhPJzWITfIKM5ZcvUsKUfnbCcZX/rVy4a+ew8GyAeK49G5xtYBYWfG06W2D7/epX7Jrxfg96OrUw==
X-Received: by 2002:a05:6808:118f:b0:2d4:13f1:8504 with SMTP id j15-20020a056808118f00b002d413f18504mr36370oil.90.1649104682967;
        Mon, 04 Apr 2022 13:38:02 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v13-20020a4ae6cd000000b00328882a2388sm4293143oot.14.2022.04.04.13.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 13:38:02 -0700 (PDT)
Received: (nullmailer pid 1929107 invoked by uid 1000);
        Mon, 04 Apr 2022 20:38:01 -0000
Date:   Mon, 4 Apr 2022 15:38:01 -0500
From:   Rob Herring <robh@kernel.org>
To:     Slawomir Stepien <sst@poczta.fm>
Cc:     pantelis.antoniou@konsulko.com, frowand.list@gmail.com,
        devicetree@vger.kernel.org, krzysztof.adamski@nokia.com,
        tomasz.medrek@nokia.com, alexander.sverdlin@nokia.com
Subject: Re: [PATCH] of: overlay: set 'overlay_tree' and 'fdt' fields only on
 success
Message-ID: <YktXKR0kI+Aq5sW/@robh.at.kernel.org>
References: <YkV60TQ+d3sltkNU@t480s.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YkV60TQ+d3sltkNU@t480s.localdomain>
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

On Thu, Mar 31, 2022 at 11:56:33AM +0200, Slawomir Stepien wrote:
> From: Slawomir Stepien <slawomir.stepien@nokia.com>
> 
> Before this change, the memory pointed by fields 'overlay_tree' and
> 'fdt' will be double freed by a call to free_overlay_changeset() from
> of_overlay_apply(), when the init_overlay_changeset() fails.
> 
> The first free will happen under 'err_free_tree' label and for the
> second time under 'err_free_overlay_changeset' label, where we call
> free_overlay_changeset().
> 
> This could happen for example, when you are applying an overlay to a
> target path that does not exists.
> 
> By setting the pointers only when we are sure that
> init_overlay_changeset() will not fail, will prevent this double free.

It looks to me like the free should just be moved from 
init_overlay_changeset() to of_overlay_fdt_apply() where the allocation 
is done. Frank?

Also, I believe there's a bug that of_overlay_apply() should be passed 
new_fdt_align rather than new_fdt. It's only a bug if we expect 
overlay_changeset.fdt to point to a valid fdt rather than the memory 
allocation.

Rob
