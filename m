Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4759E5F69CF
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 16:40:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231495AbiJFOkV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 10:40:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231433AbiJFOkU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 10:40:20 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C17919AFE1
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 07:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1665067218;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=p+tXcwSOV4d4EWIv9hMkfRyVLOs87m6DQEHcwhzbxwE=;
        b=S8H8mQFus1X5kjk0nV3g1JrauEcTDwW53RXMQ33J1nwfzDuloRpG1WWgiFXuOLmn++W8pl
        bBitWpP05ad0/DfVHpv1fT1hEharxnPbwVqwM1WFxky0BKfYR4Vblyx6kjZl2kOLrj/8KF
        WWCoaJbJ5sYh/8gjxd2n8ifVqqMdaos=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-332-I5E7ehNvM5CGCdSgkSWWwg-1; Thu, 06 Oct 2022 10:40:16 -0400
X-MC-Unique: I5E7ehNvM5CGCdSgkSWWwg-1
Received: by mail-il1-f198.google.com with SMTP id n14-20020a056e02100e00b002f9e283e850so1683817ilj.9
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 07:40:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p+tXcwSOV4d4EWIv9hMkfRyVLOs87m6DQEHcwhzbxwE=;
        b=aST+x8hUtpmyfvfRg2GkdE7JOK7nw3scfxgxNDVk/zV44vMt6GZXfzdgOeFC5Cxj5a
         3BK0PwFRtKcTJIyIeqyFy/PDaIsnTFzL92yqS4Dv6O+ntEbz+Pv5HR7e4TRsaMo8bNjl
         F5gMZE2FyHBaEN8FzTBbSjlFJBnLks02GKbkfpNWY5Qzi4P7z4Oc45BJS4RHTPkRBGyk
         ZqQhyHpEiWgLjK1dX3/PbF/UHvekzp7j/IHKIMi/7mIdJTRYo9FM7A+2P0dKG0Gxapg3
         4UI2vsZZi7M4PPIJlmyOhD/b1CQD03XUYV5eA+/lUojaRTVyVk8MWDCys/YTHXt4kyyc
         bE0Q==
X-Gm-Message-State: ACrzQf37mk7AUGhWjxNkPE6piyp6m/vr0gJwJWuDncfnxQlnzu4AbcyS
        qZfWcLhcki26mndwoi/JRcEqUNxyfBsR26W5thQtkoUzrm92DTPqJ2NTrjXB8G+TCJ+XhtTOhcX
        qEBeBhmwJsl+kvY2tVo6qvg==
X-Received: by 2002:a05:6602:2d8b:b0:6a5:3332:9bcf with SMTP id k11-20020a0566022d8b00b006a533329bcfmr56068iow.211.1665067215911;
        Thu, 06 Oct 2022 07:40:15 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7PS+ghlX3Fgu57Ciup7KgD/GG+m2sG+bU/XEsDP15MrevQn26Tsa1Y2KiI3SdvPZ6FqNY3Hg==
X-Received: by 2002:a05:6602:2d8b:b0:6a5:3332:9bcf with SMTP id k11-20020a0566022d8b00b006a533329bcfmr56050iow.211.1665067215702;
        Thu, 06 Oct 2022 07:40:15 -0700 (PDT)
Received: from x1 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id b19-20020a026f53000000b0036353ba86c0sm2509913jae.9.2022.10.06.07.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 07:40:15 -0700 (PDT)
Date:   Thu, 6 Oct 2022 10:40:13 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Johan Hovold <johan@kernel.org>
Cc:     andersson@kernel.org, agross@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ahalaney@redhat.com, echanude@redhat.com
Subject: Re: [PATCH v3] arm64: dts: qcom: sc8280xp: correct ref_aux clock for
 ufs_mem_phy
Message-ID: <Yz7ozWHRoYSlZu/0@x1>
References: <20220830180120.2082734-1-bmasney@redhat.com>
 <Yz2VnYHaTHVpiJAM@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yz2VnYHaTHVpiJAM@hovoldconsulting.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 05, 2022 at 04:33:01PM +0200, Johan Hovold wrote:
> You should fix the Subject which still refers to the "ref_aux" clock.

I'll send out a new version with the updated subject to make it easy for
Bjorn to pick up.

> I can confirm that this is needed also for sc8280xp-crd and sa8295p-adp,
> so with Subject fixed:
> 
> Tested-by: Johan Hovold <johan+linaro@kernel.org>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Thanks!

Brian

