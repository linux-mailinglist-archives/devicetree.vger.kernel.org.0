Return-Path: <devicetree+bounces-1132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D6B7A4DFF
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 18:04:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7398A281791
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 16:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F68B210E8;
	Mon, 18 Sep 2023 16:04:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314E71C289
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 16:04:48 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7503F1725
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695052470;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mOhdBYOOnOw2Xv4QV/a0Y13rP1z4QA5P773/OFzDxDo=;
	b=KOvIcdhhPo9TwfwFIaG3mjpCn5+A1pzS90453D79DGVBstI9sx3waIS8+vUTXpuWJoZm52
	tEKVnvLj2DFc43V7Cafq21o8wealIIArASmIU9ChaacUS6iJD9N4MKiRnoRieZKyxyFm80
	SvCJtduodWomwakMSAQpk7iTbKrbisw=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-217-v52TvOnWPImnxALFPrY6-w-1; Mon, 18 Sep 2023 11:54:29 -0400
X-MC-Unique: v52TvOnWPImnxALFPrY6-w-1
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-5924b2aac52so60806047b3.2
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695052468; x=1695657268;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mOhdBYOOnOw2Xv4QV/a0Y13rP1z4QA5P773/OFzDxDo=;
        b=nE0B96S+bCC3q4dxqgyiTZf9bR49ISkXS6CCWFvad80me/GmCbPYXK45fkTi/oL2Q8
         LuneSYAVgi34dVOA5JcDfp6Fw0VU4FUs0GHGC3/B4aXiYn0h0y+8uR0NW9HfC9m3enjs
         u91myYtuDQz3O1znqctLVviuvfYxqHu348bP7Znrvz1Cq33lwxchYgkd5DAkE/f5Ni+g
         PIuXNyxqUH+sRI0s/MIAIXNyrBJzQo5sJd2OIdhuGYu/unTdGOEVcEAcAzaKiByan5Y1
         R3v2jhxNyVdrROV/YrAvwT/bqtXhuw7chRLFhiDbml7/xVoKsMryvFKArLCBcqySQpwS
         O5sQ==
X-Gm-Message-State: AOJu0YyWIXntErrZei2DFp4CWWD8bh05pT70fZEDN7E9bRgk9gORUewl
	n+VLR9d8bGnYRRBoG14xPSQ7A53U0uAYAa85XiRcTfcn6mE3+IEheh4fQ010dCHZceo0aUh+2yS
	ifb8YwLUfKjO91yn7RQ6plw==
X-Received: by 2002:a0d:d892:0:b0:58f:ae13:462b with SMTP id a140-20020a0dd892000000b0058fae13462bmr9906412ywe.4.1695052468202;
        Mon, 18 Sep 2023 08:54:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZ+PPa37KkghWX0FxlMbPyu/VGLHVykUnMpS9N8b28iqb6GVc4LQaBkI7nwKXvPf5Ws77YcA==
X-Received: by 2002:a0d:d892:0:b0:58f:ae13:462b with SMTP id a140-20020a0dd892000000b0058fae13462bmr9906390ywe.4.1695052467962;
        Mon, 18 Sep 2023 08:54:27 -0700 (PDT)
Received: from brian-x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id v26-20020a81b71a000000b0059c0629d59csm2339594ywh.115.2023.09.18.08.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 08:54:27 -0700 (PDT)
Date: Mon, 18 Sep 2023 11:54:25 -0400
From: Brian Masney <bmasney@redhat.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Nikunj Kela <quic_nkela@quicinc.com>, cristian.marussi@arm.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v4 0/4] Add qcom hvc/shmem transport support
Message-ID: <ZQhysWhFtR68iVMa@brian-x1>
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <0efe305e-031b-bdf5-0268-ca1c6d562653@quicinc.com>
 <20230918151552.n3jvw2qqi5tmyfbb@bogus>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918151552.n3jvw2qqi5tmyfbb@bogus>
User-Agent: Mutt/2.2.9 (2022-11-12)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 18, 2023 at 04:15:52PM +0100, Sudeep Holla wrote:
> On Mon, Sep 18, 2023 at 08:01:26AM -0700, Nikunj Kela wrote:
> > Gentle Ping!
> > 
> 
> I will take a look at this later this week. That said, I am unable be
> gauge the urgency based on you ping here. You have shown the same urgency
> last time for a feature that I queued promptly just to know that it was
> abandon within couple of days. So I don't want to rush here simply based
> on the number of pings here. I need to understand that it is really that
> important. For now, I am thinking of skipping even v6.7 just to allow
> some time for Qcom to make up its mind and be absolutely sure this is what
> they *really* want this time.

Hi Sudeep,

Red Hat is interested in this patch set. Qualcomm is moving one of their
automotive platforms over to use SCMI and this will appear in that
product.

Brian


