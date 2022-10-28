Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0154F610C32
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 10:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbiJ1I3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 04:29:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230033AbiJ1I3n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 04:29:43 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 169E81C492F
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 01:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1666945724;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=eYvTqJzZRhXZcmDQGfvWqV+LWUYCoBA0yMtYA0vrjX8=;
        b=O4CB3KKr35kmbH/fszQdvAHZfyf+mAMRFMeY5OK8tacNcjCyVX915MxIogQJi4YkU261GN
        QJLcz5L5xPPZdEm1ET77l3O8CRIZQOmVPLzS4+VR6rWzXe+dT8MjRA74gvh8N9OHqFI3VI
        hT7RymS8erIjGVdyrp/VEBgtuTUmRfo=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-50-xyTXWqe6PE2zvoPU2AVZ6Q-1; Fri, 28 Oct 2022 04:28:42 -0400
X-MC-Unique: xyTXWqe6PE2zvoPU2AVZ6Q-1
Received: by mail-qv1-f69.google.com with SMTP id d8-20020a0cfe88000000b004bb65193fdcso2557255qvs.12
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 01:28:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eYvTqJzZRhXZcmDQGfvWqV+LWUYCoBA0yMtYA0vrjX8=;
        b=aEFc9pQJBTr+GncZf8RBxaE/S/B/B2DE47YgF3tL8MT3KtXnhfZsIiabcJbYDENcWm
         BZpyNge+B0QrTmvWZNBi3Ct2tCfYQ/0LSuS30HNBiUr1v4Hp6mH8VOzTLoF9/LZrJLkA
         DQ2M79VKYqv6VuEVQzfnGtBUy17n4I5ZUFTXuU+ARVJi2i0vErrr6br/qGbC6T5W0jtq
         iaf2fPQRzk6ZQwE+M/IviHOotc25FtDXXOdp4sIb/4AmqDMjw54xPPAJMwnRF4aLHj/B
         EU6RQTvBdbDfeYo8hKfysvZswcAxE8sB4X+LO9F1EwS2vr8rXaDiKJdLBhXZCs2pkc4q
         P16Q==
X-Gm-Message-State: ACrzQf1nI/aBfV9Df+t+wD9NQIPLmXGdiHKZOnv/0tCS8pBUa0F3pahE
        yc53NVH163HANHxd6ymCOJ3yLntgMPD+8eBC8Z8vUR8imjeqJV44I/KyO1yRT+ZKHmV46xUgAZl
        oa5g+9Fhw8lI2LCxPyCiWgg==
X-Received: by 2002:a05:620a:51c6:b0:6f9:feea:3a53 with SMTP id cx6-20020a05620a51c600b006f9feea3a53mr4128063qkb.425.1666945722083;
        Fri, 28 Oct 2022 01:28:42 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6lPZseY0YX+Knkpt2FrP+30Epj8TvUR5e8NY8W69ZnO6N8AkrenE+W50V8u4lMSiNkZpmDgQ==
X-Received: by 2002:a05:620a:51c6:b0:6f9:feea:3a53 with SMTP id cx6-20020a05620a51c600b006f9feea3a53mr4128051qkb.425.1666945721891;
        Fri, 28 Oct 2022 01:28:41 -0700 (PDT)
Received: from x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id s4-20020ac85284000000b0039c7b9522ecsm2088432qtn.35.2022.10.28.01.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 01:28:41 -0700 (PDT)
Date:   Fri, 28 Oct 2022 04:28:40 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Parikshit Pareek <quic_ppareek@quicinc.com>
Cc:     konrad.dybcio@somainline.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: add SA8540P ride(Qdrive-3)
Message-ID: <Y1uSuBNhAL/YMEVc@x1>
References: <20221020073036.16656-1-quic_ppareek@quicinc.com>
 <20221020073036.16656-3-quic_ppareek@quicinc.com>
 <7a62dd552c02e2b83fabaf9ff55a7c6c@somainline.org>
 <20221028075059.GA15101@hu-ppareek-blr.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221028075059.GA15101@hu-ppareek-blr.qualcomm.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 28, 2022 at 01:20:59PM +0530, Parikshit Pareek wrote:
> > > +		vreg_l3c: ldo3 {
> > > +			regulator-name = "vreg_l3c";
> > > +			regulator-min-microvolt = <1200000>;
> > > +			regulator-max-microvolt = <1200000>;
> > > +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > > +			regulator-allow-set-load;
> > Not sure if setting load is desired after recent rpmh regulator changes.
>
> May I know the exact patch being refered here?

Hi Parikshit,

You now need to specify a regulator-allowed-modes. Here's some links
with more information:

https://lore.kernel.org/all/20220907204924.173030-1-ahalaney@redhat.com/
https://lore.kernel.org/all/20220824142229.RFT.v2.2.I6f77860e5cd98bf5c67208fa9edda4a08847c304@changeid/

Brian

