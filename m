Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1E71709D10
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 18:58:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229932AbjESQ6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 12:58:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229770AbjESQ6n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 12:58:43 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 457E612C
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 09:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1684515476;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=OSQIXexhEgr4UYHcCQ3e6Gbt+1IifasCgEOBLmd3ZJs=;
        b=QPTKayMojagh+NqxI+SvCK/fFIjqSHjYXOnn4iPm1JuJXCHK9cTyeMlB2jwBWXzp7DVBuO
        jYDvFBS3C5B1EqY7IJ8/EqXxzVb7m1rDPeN1MPhrQi2illczRLff/U8eFJUw/LoJcWbmbO
        4XAI3X+TdXqzRu6gAzld0m85m/BBJH8=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-73-zSmCmewgPoK4wTbHY-ldhQ-1; Fri, 19 May 2023 12:57:53 -0400
X-MC-Unique: zSmCmewgPoK4wTbHY-ldhQ-1
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-6ab85db2ea4so2954229a34.0
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 09:57:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684515473; x=1687107473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OSQIXexhEgr4UYHcCQ3e6Gbt+1IifasCgEOBLmd3ZJs=;
        b=RXlQ7UNH/DZBBYYf0I1zCxOdNnnnNE/kzisrA2OX5A5EJzJRfeXE3PEff8Lh31T4gP
         PUjdCplKlP7btiPbuFWpz6cU9pny9an5B0pwmvC+jGznbhL1q0F1OYjArc3FOS92XByk
         Yg6fc+KgpX+kyGUIdcEu9sRADA749YFoUrCfo8fO/21yb2WbPaqkG1u7wMv2OT56K7gh
         9gKmKLqPC3lLOLcUmx4OLJhMZzLTUFWZmTcaiFdyCoB9M+C9KXsHcuyg4Sk+HeQ2FPDP
         wnej/kY05Pm/bXUNXxPnNz5a4khQGvVzal/hd+x2W9VuTp/Dkely6UsTRygx2Kobpy0U
         AxjA==
X-Gm-Message-State: AC+VfDxDzxXSe+B+XMLVHFQDWE4qtvAJTgp5nmLKc8J/zC7oCfNAG6mj
        RCgh5i4FaDdHrb+N7t5uQoXptEUypZ0cwFTxQgJKTwV4nr2r3G8WVrIWIUvyqWEPbVIWvczzuXC
        QcHqBOoB4BkogPlziC8IRfw==
X-Received: by 2002:a9d:4f07:0:b0:6a5:f682:44ca with SMTP id d7-20020a9d4f07000000b006a5f68244camr1219052otl.16.1684515472999;
        Fri, 19 May 2023 09:57:52 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4RGmOB71h2mvB5aElpiYywwU5/QlRBW65OVaQT7Hgd8JfaRKJWGZOMGc7iCxi/sUCdW1BMfg==
X-Received: by 2002:a9d:4f07:0:b0:6a5:f682:44ca with SMTP id d7-20020a9d4f07000000b006a5f68244camr1219041otl.16.1684515472780;
        Fri, 19 May 2023 09:57:52 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::42])
        by smtp.gmail.com with ESMTPSA id n22-20020a0568301e9600b006ab305429e7sm1843984otr.0.2023.05.19.09.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 09:57:52 -0700 (PDT)
Date:   Fri, 19 May 2023 11:57:50 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     andersson@kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 v0/4] sa8155p-adp devicetree ethernet cleanup
Message-ID: <20230519165750.p36jzknh44eij4nf@halaney-x13s>
References: <20230501212446.2570364-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230501212446.2570364-1-ahalaney@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Bjorn,

I think this one is ready to be picked up. Just a gentle reminder, I
almost forgot about it until I cleaned my inbox this morning :)

Thanks,
Andrew

On Mon, May 01, 2023 at 04:24:42PM -0500, Andrew Halaney wrote:
> This series cleans up some devicetree conventions in sa8155p-adp based
> on feedback from other platforms.
> 
> The hope is that by getting it right here, future contributors won't
> repeat the same mistakes as I did!
> 
> v3: https://lore.kernel.org/linux-arm-msm/20230421205512.339850-1-ahalaney@redhat.com/
> 
> Thanks,
> Andrew
> 
> Andrew Halaney (4):
>   arm64: dts: qcom: sa8155p-adp: Make compatible the first property
>   arm64: dts: qcom: Make -cells decimal
>   arm64: dts: qcom: sa8155p-adp: Remove unneeded rgmii_phy information
>   arm64: dts: qcom: sa8155p-adp: Move mtl nodes into ethernet node
> 
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        |  2 +-
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi        | 14 ++---
>  arch/arm64/boot/dts/qcom/msm8953.dtsi        |  4 +-
>  arch/arm64/boot/dts/qcom/qcs404-evb-4000.dts |  4 +-
>  arch/arm64/boot/dts/qcom/sa8155p-adp.dts     | 56 ++++++++++----------
>  5 files changed, 39 insertions(+), 41 deletions(-)
> 
> -- 
> 2.40.0
> 

