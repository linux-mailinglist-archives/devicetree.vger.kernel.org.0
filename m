Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 861CB37FAAE
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 17:27:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234900AbhEMP2n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 11:28:43 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:26880 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234485AbhEMP2h (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 May 2021 11:28:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1620919647;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=syc9KYvk2Qv0VepNu59RlX1jozcF6x0a6FAg9dMOIuw=;
        b=cwrswQ+3W/B9MT4vQkyBa5rmuMKArvQPGMP8RvpkRl6Rds/BEtWEZ92ihuvIxrzfGZvNjI
        IbMtWlQ/I1wiBl6KyZTC80HjZe3t9GaAEzLMU4xX5W4h8pFx7zkM9jITbWpXf85PPa5qyl
        +Uj+NSQz6pPNGeWZqQCWITCbyp2Oj1o=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-Suw6xOYpN9i8D2SRZ2hfiw-1; Thu, 13 May 2021 11:27:21 -0400
X-MC-Unique: Suw6xOYpN9i8D2SRZ2hfiw-1
Received: by mail-qv1-f70.google.com with SMTP id w6-20020a0cdf860000b02901ec995d8822so677694qvl.23
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:27:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=syc9KYvk2Qv0VepNu59RlX1jozcF6x0a6FAg9dMOIuw=;
        b=BGsia+Idap/DjTgnfAtFXASfUaJeLtsHQfyCCgO+CzEHmDu1UF8UbH+cqfTmYHsUxj
         yYTn1a+Aq6kY37i73Ts91ozMUpQLybQp58MfauWjnyPaPjQl+C+/5JerzclTJ17d796n
         ZVKPOT6bwb1yXOICnKbv1YgcNJ3EBlyvnN6XYddhADHsfRQC22gWTHf6lOrVnOHLnmjp
         2O6a5zqlW8vT51wijpeOb2FqielgbxlUZsd1/ixlXN60WfrQk4suvtveryrRzqGuzKwV
         yoj/5uzkcCXxAVRaX/BkAlhHFUC54MCBK/VKswQfALIgrnpvdeFrK/GoCRyzKc4Sjxnc
         9QGA==
X-Gm-Message-State: AOAM5307ieWp0ZaI23FJT0QF+Zo/1c2sdjZhAuYznYMHL1daHn22l7sa
        CW4CwbnaqHb6E/3is+2/h/iQLsK+UlqNSivfZL5X1YHdLFLN/BugXsupI3F3d6tMoDktwH95gMB
        taePsW0RfIAWMECLs+XUKEA==
X-Received: by 2002:a05:620a:20d7:: with SMTP id f23mr19036852qka.484.1620919640667;
        Thu, 13 May 2021 08:27:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx3s/xgTHrnlHcj6/c+rnyyDWYIe13AuITQm/PZaxgBas7dHJddX7yNG1GdULm1D6prHyFK6Q==
X-Received: by 2002:a05:620a:20d7:: with SMTP id f23mr19036838qka.484.1620919640467;
        Thu, 13 May 2021 08:27:20 -0700 (PDT)
Received: from localhost.localdomain (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 123sm2695552qkg.0.2021.05.13.08.27.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 08:27:20 -0700 (PDT)
Subject: Re: [PATCH V6 XRT Alveo 08/20] fpga: xrt: driver infrastructure
To:     Lizhi Hou <lizhi.hou@xilinx.com>, linux-kernel@vger.kernel.org
Cc:     linux-fpga@vger.kernel.org, maxz@xilinx.com,
        sonal.santan@xilinx.com, yliu@xilinx.com, michal.simek@xilinx.com,
        stefanos@xilinx.com, devicetree@vger.kernel.org, mdf@kernel.org,
        robh@kernel.org, Max Zhen <max.zhen@xilinx.com>
References: <20210512015339.5649-1-lizhi.hou@xilinx.com>
 <20210512015339.5649-9-lizhi.hou@xilinx.com>
From:   Tom Rix <trix@redhat.com>
Message-ID: <c6ed9349-1a9a-62a9-521f-a12ec8c4a5a5@redhat.com>
Date:   Thu, 13 May 2021 08:27:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210512015339.5649-9-lizhi.hou@xilinx.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 5/11/21 6:53 PM, Lizhi Hou wrote:
> Infrastructure code providing APIs for managing leaf driver instance
> groups, facilitating inter-leaf driver calls and root calls.
>
> Signed-off-by: Sonal Santan <sonal.santan@xilinx.com>
> Signed-off-by: Max Zhen <max.zhen@xilinx.com>
> Signed-off-by: Lizhi Hou <lizhi.hou@xilinx.com>
> Reviewed-by: Tom Rix <trix@redhat.com>

> +
> +int xrt_subdev_root_request(struct xrt_device *self, u32 cmd, void *arg)
> +{
> +	struct device *dev = DEV(self);
> +	struct xrt_subdev_platdata *pdata = DEV_PDATA(self);
> +
> +	WARN_ON(!pdata->xsp_root_cb);
> +	return (*pdata->xsp_root_cb)(dev->parent, pdata->xsp_root_cb_arg, cmd, arg);

I am running v6 through clang's static analyzer.

It reports this problem

drivers/fpga/xrt/lib/subdev.c:72:9: warning: Called function pointer is 
null (null dereference)
         return (*pdata->xsp_root_cb)(dev->parent, 
pdata->xsp_root_cb_arg, cmd, arg);
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Though there is a warn_on, can you also add a

return -EINVAL;

To cover this case?

Tom

> +}

