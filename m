Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 489FA710FA2
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 17:32:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241805AbjEYPcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 11:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241810AbjEYPcG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 11:32:06 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B950199
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 08:32:04 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-64f47448aeaso1770315b3a.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 08:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685028723; x=1687620723;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UmQi8fIzOJff3kyNGKaVTa69XxHyX2JQ/cM/6RRUYVY=;
        b=fv94K8XOnLGVRz+eN9eeXw5o+qvVgngk6JKw1Zc/4W9HISDqNzb6NTDZBmnff2uF0x
         s5UovWDO85t7EqIV86tWY8ZU2upyA6OzuFoNhF18Xoyi6iOi9X6ArwTaL9zTBfN7Pzgr
         kzl9XtnZrOFzXK50ZCTxsObp0OyTd9FkCT+x+ZugTmNn1ciepfVkwk/j/eVPBYVCCzqO
         oXJP4obDUZFABgjNJ+UUe0wQ35BPiePXyaqyQMA0Ny48yerkpH3uFOFGgERMw8Mv6s5v
         7fAOt7TTr5MJ8GTgDpy69t1asKioeh5cpxs2rXz60oovYZ4cpnKUeYnsfQVhCK+Vt1ns
         zqlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685028723; x=1687620723;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmQi8fIzOJff3kyNGKaVTa69XxHyX2JQ/cM/6RRUYVY=;
        b=XR5Jmchj8Y8g7uJK0Lec8iHkNQ11SOahN71QV978/HkCj8psE2cYhrdxgmsLLHirGG
         9pqMS7opMacpaiSzzRfLDomlVOcTB57sPyUtvZH7Tm5hTaZyVO0254hm6Clp6lz+vXqO
         1KDx/zWZPAhmr4LAxF/tKRwB2FtrsiBotnZZPHEJ4xmAFIY4W0iErMJekjQWii7APtMa
         0CMI5m/YlDGBX9vOk10EQYVST8WhdrFkavY1L8AyWawC+YCXfEONFcyyjPy10jinQ3DP
         F9uh1uxNeD3Xb/kgPes7x3fLRlZis3KIUl8+S4vk3gR3F5j6vQUobeC5fVSr+4MG8Efe
         KEqQ==
X-Gm-Message-State: AC+VfDwGTF+94r+a5BdeCk3WF0gOvg/cN+G9Av57WYgP2qOn8blS0Yhi
        hEq28CnQcqcnf548d6yW3yiyRQ==
X-Google-Smtp-Source: ACHHUZ46Du0JEr4QEa4hb5TfjiXFSDB8X9bCJLLgtTlTN8tlUOafA+SKBkA/6yJjF+jYQ0axnk4tVg==
X-Received: by 2002:a17:903:2793:b0:1ad:e633:ee96 with SMTP id jw19-20020a170903279300b001ade633ee96mr2007567plb.55.1685028723461;
        Thu, 25 May 2023 08:32:03 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:2825:fb66:f9f3:171d])
        by smtp.gmail.com with ESMTPSA id bj2-20020a170902850200b001993a1fce7bsm1557285plb.196.2023.05.25.08.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 08:32:02 -0700 (PDT)
Date:   Thu, 25 May 2023 09:32:00 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Cc:     linux-remoteproc@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, quic_plai@quicinc.com, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, srinivas.kandagatla@linaro.org,
        quic_rohkumar@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@linaro.org, corbet@lwn.net,
        quic_visr@quicinc.com
Subject: Re: [PATCH v5 0/2] Update section header name check
Message-ID: <ZG9/cEMRMg06Pz4u@p14s>
References: <20230223150559.2429562-1-quic_mohs@quicinc.com>
 <20230302215735.GA1401708@p14s>
 <f9c6fead-d573-a8bc-7e88-a53313ff8bef@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f9c6fead-d573-a8bc-7e88-a53313ff8bef@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 11, 2023 at 10:09:45PM +0530, Mohammad Rafi Shaik wrote:
> 
> On 3/3/2023 3:27 AM, Mathieu Poirier wrote:
> > On Thu, Feb 23, 2023 at 08:35:57PM +0530, Mohammad Rafi Shaik wrote:
> > > Update section header name check and corresponding documentation.
> > > Changes since v4:
> > >      -- Rephrase commit message.
> > Asked for clarifications on V4 that were never given to me.  This patchset will
> > not move forward until those have been resolved.
> The present Qualcomm DSP binary contains resource table name as
> ".resource_table.ac_bin_process.",

My questions still haven't been answered:

1. Why do we have to change the kernel because of the way a company specific
tool generates an ELF?

2. Why is the "ac_bin_process" part needed at all?

> so the current logic with strcmp will fail with present comparision  as the
> binary name is not only .resource_table but resource_table.ac_bin_process So
> to overcome this issue we modified the way of checking the resource table
> name to make it generic.
> 
> strstarts(name_table + name, ".resource_table");
> 
> This logic will perform a string comparison with name ".resouce_table"as our
> binary name is .resource_table.ac_bin_process it succeeds
> 
> > > Changes since v3:
> > >      -- Rephrase commit message.
> > > Changes since v2:
> > >      -- Update the commit message with example.
> > >      -- Update the documentation text appropriately.
> > > Changes since v1:
> > >      -- Update the commit message.
> > >      -- Use strstarts instead of strstr.
> > >      -- Update documentation file.
> > > 
> > > Srinivasa Rao Mandadapu (2):
> > >    remoteproc: elf_loader: Update resource table name check
> > >    docs: remoteproc: Update section header name requirement
> > > 
> > >   Documentation/staging/remoteproc.rst       | 5 ++++-
> > >   drivers/remoteproc/remoteproc_elf_loader.c | 2 +-
> > >   2 files changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > -- 
> > > 2.25.1
> > > 
