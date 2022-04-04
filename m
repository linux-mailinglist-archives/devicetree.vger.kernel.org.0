Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 715614F1B53
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379365AbiDDVUH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:20:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380694AbiDDVER (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 17:04:17 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F8D138A3
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 14:02:19 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id x4so12872258iop.7
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 14:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=374IPF+4LyCDjXvGR49/koQz84WXIinTEp+pYghmo/4=;
        b=e9avgMgcDErOdnTtOilPDqFVWD5sTxAjO32blIfJaOI6U+f5VS92mka/oZhmtjrLk9
         4XDma84JcPgCMoWtdBdGdo/xkgKCjvI02Yz+IcLw8bqMcZOiOo8YZZ94k/spsiYg49Xj
         PtaYml90ZK4ztuzgv+9NQdU0sfeeZXt+ppuOLEkLXeKfMYSgBcNtkE0OACjdHWP2zQEf
         hMcRrQDawRNhPM7LL5cvnYvXCsess1O2+EITrskrZrov5tNoQSvElpq2QJGP43Qw6EZJ
         fJlvgmllsuRimg6DkguWkf/HsBTS5i/OZD7Q8Q5bs+QpbckRsOBmseplJ5ulNGD1Xyj7
         QHxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=374IPF+4LyCDjXvGR49/koQz84WXIinTEp+pYghmo/4=;
        b=eV1PETQaIBXe/WiULAvB5Re57pVPO43LS5aCkcQJNFbCjMLSeTB+zve8ssorLi7qUU
         y5BMBqfe0WmIM5GvtYClu6HEvQjZHIGp1VKUkPd+tlJRqh8IVbEaMz6y/xJDF02C60Io
         LQ70wn09Y8CQ4LEgw730ZqSe9Klz0xf51+jYlOVKcyFfLFaNqxWcxriYArwpcaCQTemo
         293WlkKjZ8mA8Wac3Kn8iVLYOcdXqaWfqzdzkASjlq4M4dZ6mQqBVfYQqrLk1h6UGTTZ
         a3Cuc458ecKHuHGEHTmSDyTXVF/r3LGIjNTwIPZ3VWeumb3V3SU/X88TY7kPXIUs6OJR
         r3vg==
X-Gm-Message-State: AOAM532fuKrrm4D/5Zg0/oBJGOmWYWZ5vrStBs0ZZ2bAb21IaLigmpro
        OhVzHBJ1wGo2Z5/DQ7f30C8=
X-Google-Smtp-Source: ABdhPJzGXls4hE7sw19S7b2xqcxUdRrlIDJUjtELChxIIS214qanYwFf0GRZBz/hpLOOi73mUFj3mw==
X-Received: by 2002:a05:6638:2105:b0:323:68db:2e4e with SMTP id n5-20020a056638210500b0032368db2e4emr143203jaj.234.1649106139012;
        Mon, 04 Apr 2022 14:02:19 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:d520:1e7b:35fa:114b? ([2600:1700:2442:6db0:d520:1e7b:35fa:114b])
        by smtp.gmail.com with ESMTPSA id z18-20020a05660229d200b0064c719946a8sm7518621ioq.34.2022.04.04.14.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 14:02:18 -0700 (PDT)
Message-ID: <4375072d-abb4-6ff6-d1a0-4c2fca54cf39@gmail.com>
Date:   Mon, 4 Apr 2022 16:02:16 -0500
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
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
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

This patch is next on my list to look over.

-Frank

> 
> Also, I believe there's a bug that of_overlay_apply() should be passed 
> new_fdt_align rather than new_fdt. It's only a bug if we expect 
> overlay_changeset.fdt to point to a valid fdt rather than the memory 
> allocation.
> 
> Rob

