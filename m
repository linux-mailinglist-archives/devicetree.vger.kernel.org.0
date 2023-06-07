Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE48E72591F
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 11:01:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239740AbjFGJB3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 05:01:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239452AbjFGJAx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 05:00:53 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDE861725
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 01:59:07 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-38e04d1b2b4so6083909b6e.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 01:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686128347; x=1688720347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hBdjUmLLxTMipCtOKQafeZ6YaOeoY5bbnR9kUaMiMR8=;
        b=jsrrj31dMSZIbXb6poLk+N0BvihdLqH/JjRk6kRQ8CuxsF4eUzJZT7EJKYb2550fMx
         K83PUI/+23opZQgiJRIQzZzwdEq/0RcaOdgoCYoGY314fiTZDc/xzHPoqCEIclLbTCML
         klrGBtBtIYMajaM193uWBkXXjlfmFTj02kkZ61DxCeLvh2tOEhYkyM49b4IzWmbf0S8l
         a9HjtvM14SwVf3KXyvNnWY5f/NLHD7oKEHmTlED3VxUCDfRm0i0S/K4FVevYFkn61tWb
         o0BmY4F63xRMkoN75bsLUX+27YMcINWK190TXD6d36PBEs1sUzw2CznAZMr9oIqPPVtI
         FY8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686128347; x=1688720347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hBdjUmLLxTMipCtOKQafeZ6YaOeoY5bbnR9kUaMiMR8=;
        b=CPQGlbNxx3LMguC8Q3fNsu3tE12adW21+vGhWn4X1W47wPZU2IDVTWXKowSSZBj21M
         Ghe3r65z+/RNqSqXiw5OhPvIXoht+nPQn1azF/lo5CeJzJmHhpzwtqkKXf7W1WMTytua
         0MIjr9l027Cm20Dm+WfUA5Ia+cFyVNUMBaZWFQeWfMinzTNN2+PgJynel+GrD8Yk+Z+R
         gTvCn4+Z5iFTTCH39q+493iv+SFEdzpIjf8lTvmX9sb9TsV6ihMOaMTtbBNxPmlyikj2
         60bg4z6qAsdOXDxHSiihXbZgdfv8uo64gAgDGOrvOHvZGFNU7yhOoOBlPrVxW/jrExVi
         qWlw==
X-Gm-Message-State: AC+VfDyKzQa0vhHz+bVTBcCY7kAwH01o87SLfq2ZopRl1G5R/qlyHvcv
        G6TraQjmfhpftBKKqYI40KpOW8yAJBgJKKhkwl8m3w==
X-Google-Smtp-Source: ACHHUZ58qE/jJ6JiHkhted4hEmdJJkE4YrpMwduhlMy70pGAkRQPDl8XF8dwesLFyXSW5wi1d++FZyEEUrZqVPMc/hU=
X-Received: by 2002:a05:6808:4294:b0:396:4977:e148 with SMTP id
 dq20-20020a056808429400b003964977e148mr4766073oib.9.1686128347140; Wed, 07
 Jun 2023 01:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230529062511.52016-1-anshuman.khandual@arm.com> <20230529062511.52016-6-anshuman.khandual@arm.com>
In-Reply-To: <20230529062511.52016-6-anshuman.khandual@arm.com>
From:   Mike Leach <mike.leach@linaro.org>
Date:   Wed, 7 Jun 2023 09:58:55 +0100
Message-ID: <CAJ9a7ViWiSuabBVPASHO-MDs9z7wGSLuCLCpPezFrh6p3AOgyA@mail.gmail.com>
Subject: Re: [PATCH V5 5/6] coresight: platform: acpi: Ignore the absence of graph
To:     Anshuman Khandual <anshuman.khandual@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
        suzuki.poulose@arm.com, scclevenger@os.amperecomputing.com,
        Ganapatrao Kulkarni <gankulkarni@os.amperecomputing.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linaro.org>, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

HI Ansuman,

On Mon, 29 May 2023 at 07:26, Anshuman Khandual
<anshuman.khandual@arm.com> wrote:
>
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
>
> Some components may not have graph connections for describing
> the trace path. e.g., ETE, where it could directly use the per
> CPU TRBE. Ignore the absence of graph connections
>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 475899714104..c4b4fbde8550 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -692,8 +692,12 @@ static int acpi_coresight_parse_graph(struct acpi_device *adev,
>
>         pdata->nr_inport = pdata->nr_outport = 0;
>         graph = acpi_get_coresight_graph(adev);
> +       /*
> +        * There are no graph connections, which is fine for some components.
> +        * e.g., ETE
> +        */
>         if (!graph)
> -               return -ENOENT;
> +               return 0;
>

Should we not determine if it is valid for a particular component not
to have a graph connection?
Prior to this patch an incorrectly configured ETMv4 - which must have
a graph would return an error, after this it will fail silently

Mike

>         nlinks = graph->package.elements[2].integer.value;
>         if (!nlinks)
> --
> 2.25.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK
