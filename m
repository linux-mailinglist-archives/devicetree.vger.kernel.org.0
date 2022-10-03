Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 651D15F364C
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 21:30:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbiJCTad (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 15:30:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbiJCTab (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 15:30:31 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E5D42CDFE
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 12:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1664825428;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=UlBYJXSMKfnaBFHLLoeXVDsNHkkt4H3c545HLAUa1Nk=;
        b=gBFFtL/+WV2sxJzxtMfSMfH1o/XgsxH6jj/xNYX7+OF5KbfVDBgh5CrnKrW8PhWsxVOhZD
        8OVSUFxbRwA1ndh6G2AMt2ux6ez5egcqKsFq7PfGAFuW0dKG32BSz0yeq/KJyce9oj9gyg
        wUCKZ94q0ZNb5R54GpJd4LJ+8HhxO4w=
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com
 [209.85.160.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-49-E7vONYB-MFOnGktJ0nvt_w-1; Mon, 03 Oct 2022 15:30:27 -0400
X-MC-Unique: E7vONYB-MFOnGktJ0nvt_w-1
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-13227a6bba3so4350134fac.2
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 12:30:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=UlBYJXSMKfnaBFHLLoeXVDsNHkkt4H3c545HLAUa1Nk=;
        b=mO/7RzeyFL24XRGv5t1ezB5uP/oRxu77x6fJ8pWGpROf3YnHzYR7wvLXyBmurTAGJl
         tQNp9OPUIHwT1Jk/tFC4kvCyE6cUTGxWoglHMniABTlvhmRsnoyokB9mhZnbCLKpIml1
         QtfZR+HVnRXGPFZa8VyC/QZIQsZ+jmxz+L/ZHOSTShEVxdSJylxm358hu7L5IBJgmJaz
         JXt1zDuCzdNx9+fqKC2lac17kmom7Xp6N3dpOHmlItqM00qeCloWaGd1tABy2WZGXWCU
         WfycM5AUm5t77ZmY6Pt6uQKaKWo7vSYWUR8/rHdVFvIEcIgujVShPsvO71QmJV1dDlG7
         ytlQ==
X-Gm-Message-State: ACrzQf2yjaSHTHwlT/aVMZqR4RLJKdImCpg8Ci9Eoq1exkniiF6plbr9
        UTq+FGjewMA/W6DXnEqqzmmZ9tbs+M32T6SlsgNazx+hbGB58lLYON+iD8lh5VfKozPLfIJTVGf
        M0zXWDsSuTD1pjXp/FJh9oA==
X-Received: by 2002:a9d:61c1:0:b0:65b:d7e7:aba9 with SMTP id h1-20020a9d61c1000000b0065bd7e7aba9mr8239959otk.148.1664825424164;
        Mon, 03 Oct 2022 12:30:24 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5tdFgyP7y22kEo0MjOpgPitAYHYr6fdAe3hwamA3lYQ+GhmpTbSH4G93rr4owvBApnmyT+hA==
X-Received: by 2002:a9d:61c1:0:b0:65b:d7e7:aba9 with SMTP id h1-20020a9d61c1000000b0065bd7e7aba9mr8239952otk.148.1664825423955;
        Mon, 03 Oct 2022 12:30:23 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::21])
        by smtp.gmail.com with ESMTPSA id x1-20020a4a3f41000000b00432ac97ad09sm2229516ooe.26.2022.10.03.12.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Oct 2022 12:30:23 -0700 (PDT)
Date:   Mon, 3 Oct 2022 14:30:20 -0500
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Brian Masney <bmasney@redhat.com>
Cc:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: fix UFS PHY serdes size
Message-ID: <20221003193020.mxt6xumjaguilgli@halaney-x13s>
References: <20220915141601.18435-1-johan+linaro@kernel.org>
 <Yzsf9eoH2A5Xr3bS@x1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yzsf9eoH2A5Xr3bS@x1>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 03, 2022 at 01:46:29PM -0400, Brian Masney wrote:
> On Thu, Sep 15, 2022 at 04:16:01PM +0200, Johan Hovold wrote:
> > The size of the UFS PHY serdes register region is 0x1c8 and the
> > corresponding 'reg' property should specifically not include the
> > adjacent regions that are defined in the child node (e.g. tx and rx).
> > 
> > Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> 
> This fixes an issue that I'm seeing on the QDrive3 in next-20220930.
> 
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> 

Tested-by: Andrew Halaney <ahalaney@redhat.com> #Qdrive3/sa8540p-adp-ride

