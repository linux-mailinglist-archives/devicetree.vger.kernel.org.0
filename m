Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C09DF6BDCAA
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 00:06:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbjCPXGz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 19:06:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjCPXGy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 19:06:54 -0400
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACCDBE6DBC
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 16:06:53 -0700 (PDT)
Received: by mail-il1-f181.google.com with SMTP id l9so1882175iln.1
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 16:06:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679008013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uqbFkLv206A82F4UnTo9FrJjnI0yaYZWl4SReXRwGaE=;
        b=hQVAjl8yS2Cjf7y9RIzYqY6x786k4I6pNqlgRwBXaVqOZDnJ0A+r2ejdczwkceJC/P
         3VJ8uS6tO10hNzJx9YWoOeDL/9Ln1+yWgAzGdL9Zjl1xMbofKJ4yJUPrEDJfLI/gnAaG
         eDk/ZHoW7Qh37emK3o7u+KtKQq4f/eRJPGp6y8zodqVWe2holX3rS5w8NtJaWDkHF2nr
         C2bWgbQB1iaVGbGYKEFTUWVpgWAIIIT8JldvmB82nOE7bpIMfiOB1hIMu1AORMEHfgjP
         pIgS/EbVZx8yfek3yXJ6MsjEFPzjQFlsM2fZN28yUpoHMmi8jS1NyMoaJ6gGUSHMHZJB
         zLEg==
X-Gm-Message-State: AO0yUKUj+PL6H3JVdOuekjb+Gcd27gTZSho3SX+pYAr0eHPsTKsvU8yv
        VMmqb+gpN/32UROyL6sKA3kYddEJ4w==
X-Google-Smtp-Source: AK7set8v6x2OU8EwDveW2kRtrUr8aXE+PtEkKWyatVoFTyUtk3bV8Hbe1zJtTCgquOEQVVQVEkMJ1Q==
X-Received: by 2002:a92:d7ce:0:b0:323:338:cc24 with SMTP id g14-20020a92d7ce000000b003230338cc24mr7703929ilq.12.1679008012962;
        Thu, 16 Mar 2023 16:06:52 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.249])
        by smtp.gmail.com with ESMTPSA id g26-20020a02271a000000b003a60da2bf58sm180538jaa.39.2023.03.16.16.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 16:06:52 -0700 (PDT)
Received: (nullmailer pid 4054450 invoked by uid 1000);
        Thu, 16 Mar 2023 23:06:51 -0000
Date:   Thu, 16 Mar 2023 18:06:51 -0500
From:   Rob Herring <robh@kernel.org>
To:     Xu Yang <xu.yang_2@nxp.com>
Cc:     festevam@gmail.com, frank.li@nxp.com, mark.rutland@arm.com,
        linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
        robh+dt@kernel.org, will@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: perf: fsl-imx-ddr: Add i.MX93 compatible
Message-ID: <167900801047.4054366.8591311615821573287.robh@kernel.org>
References: <20230310101916.2825788-1-xu.yang_2@nxp.com>
 <20230310101916.2825788-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230310101916.2825788-2-xu.yang_2@nxp.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 10 Mar 2023 18:19:15 +0800, Xu Yang wrote:
> i.MX93 ddr pmu shares the same device node format as i.MX8. This will
> add a compatible for i.MX93 and modify the title.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

