Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BD2F4FB018
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 22:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbiDJUcq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 16:32:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243910AbiDJUcd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 16:32:33 -0400
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EE9E4E3B0
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:30:22 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id g11so8114176qke.1
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 13:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BsUcM/Z7XokBBwlNH68ct6CoGgQVUeHoiGIq8UOrkwY=;
        b=cm0vDg1xFaEu9ibVLcvrZe+KU2uU7qBEpKcpcsOUQ7yy0iL5YqYNzPqi2kXEbU92j9
         wPvD5MWybREyUfXzCy+vckx1uHnCJR97bqscSuuG5vGUqSHem5LTgmIF5lQt2dFqSmI/
         w4btpLhGLxvFQHarQ1oiXdunNkZWfI6O4POVBAty3zF/IKWjzY5ENEQaVZj0CeDzNuHN
         Vw+33w/MNXrhP4Wt3OfX2HrtXz0qcmrSY+mlmiIIcXl6hbUsyJBhIolmwxD1XE/h0Z+u
         SlT/6QjDPeFPLPiAHRzAb6xt1rOM3X7UvSA7+xcYsdQKRpTYAKkPoNmeIbba9pwCOcDP
         2Vng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BsUcM/Z7XokBBwlNH68ct6CoGgQVUeHoiGIq8UOrkwY=;
        b=VODkqQeOytAJkEw4QV50J3dZ7i7F0DU8qdcI9uWBAH/zODrF4CtBEUK2fWpPPKcHCM
         6OLlEetu2+tauocdgrg5/x/dsrZEXu1sMfFJR6wzW3Tt+yuyNiu8O5lTGEXEU0C1qYo3
         ZY7gWXpPYobPJ02fB7S2aRPMPaMetp6S4tBXU5f7n3Cz493FyPs0tyNUQNrYYh3k0AaU
         x/HXSXeXHM5KT4xjD1hJj6UO2KG7ydp3BafvTwOoh+u7ceovHx4sVmheePb+aB6NDREC
         jTzexWp1ugasUGdTuKhOgH0cpoW34r3I7Rsgnv1gLXKO5ghuD7nL11N06+4E8l7eB8qP
         qSYA==
X-Gm-Message-State: AOAM531esxz8Q1rnZQlG7UlXRRcRCOQxTc4WU3EKsW84YmfgmBdbnwI4
        BEVpUcfrUiLpIingxbG+7Ls=
X-Google-Smtp-Source: ABdhPJy3I3GbEexUHVfDnRg9g4E4gkjFWv7Qfyhzx6G+Eoe7jfi1VGRzcdK+RQ6acRAQqz9DVaKTjw==
X-Received: by 2002:ae9:e8d0:0:b0:69b:ef92:c0b with SMTP id a199-20020ae9e8d0000000b0069bef920c0bmr7104236qkg.498.1649622621396;
        Sun, 10 Apr 2022 13:30:21 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:6c1b:d125:bcaa:58ab? ([2600:1700:2442:6db0:6c1b:d125:bcaa:58ab])
        by smtp.gmail.com with ESMTPSA id o6-20020a05620a22c600b0067d247816eesm17157139qki.85.2022.04.10.13.30.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Apr 2022 13:30:20 -0700 (PDT)
Message-ID: <979ce2b9-f7ca-bf2d-7bea-bfb767595e66@gmail.com>
Date:   Sun, 10 Apr 2022 15:30:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] of: overlay: set 'overlay_tree' and 'fdt' fields only on
 success
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Slawomir Stepien <sst@poczta.fm>
Cc:     pantelis.antoniou@konsulko.com, devicetree@vger.kernel.org,
        krzysztof.adamski@nokia.com, tomasz.medrek@nokia.com,
        alexander.sverdlin@nokia.com
References: <YkV60TQ+d3sltkNU@t480s.localdomain>
 <YktXKR0kI+Aq5sW/@robh.at.kernel.org>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <YktXKR0kI+Aq5sW/@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/4/22 15:38, Rob Herring wrote:
> On Thu, Mar 31, 2022 at 11:56:33AM +0200, Slawomir Stepien wrote:
>> From: Slawomir Stepien <slawomir.stepien@nokia.com>
>>
>> Before this change, the memory pointed by fields 'overlay_tree' and
>> 'fdt' will be double freed by a call to free_overlay_changeset() from
>> of_overlay_apply(), when the init_overlay_changeset() fails.
>>
>> The first free will happen under 'err_free_tree' label and for the
>> second time under 'err_free_overlay_changeset' label, where we call
>> free_overlay_changeset().
>>
>> This could happen for example, when you are applying an overlay to a
>> target path that does not exists.
>>
>> By setting the pointers only when we are sure that
>> init_overlay_changeset() will not fail, will prevent this double free.
> 
> It looks to me like the free should just be moved from 
> init_overlay_changeset() to of_overlay_fdt_apply() where the allocation 
> is done. Frank?

Yes, that would be much cleaner and proper.  v2 of my follow on patch set
will do so.

> 
> Also, I believe there's a bug that of_overlay_apply() should be passed 
> new_fdt_align rather than new_fdt. It's only a bug if we expect 
> overlay_changeset.fdt to point to a valid fdt rather than the memory 
> allocation.

new_fdt is correct instead of new_fdt_align.  It is only used by
of_overlay_apply() and children for the purpose of kfree().  The
only place that new_fdt_align is derefenced to access the data
in the FDT is in of_fdt_unflatten_tree() and children, which is
called by of_overlay_fdt_apply.
> 
> Rob

