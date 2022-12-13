Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D93F64B824
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 16:11:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235382AbiLMPLP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 10:11:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236061AbiLMPLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 10:11:08 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C25521A4
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 07:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1670944227;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=R9+NLd3jxdSYaQWEDRounaRV4J5+VnhfuGCpFV9Scak=;
        b=NL1lUGe22W73IieIe26XklD7P8IMCmBOVTWG64wIpT8ZCCfpNCURAdQMoFyFMH2SSo1qY7
        H+sfeZqFxUK/FgOxKbZgwu87nG2Q4pYKWTarIQFugl2/hZSTrlOpmfcO8J/Juvm+OoQlG5
        y80wvZVNeiTkc32/b5lIzN2sHlydL9c=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-277-9jVfQtIsNUCQderz893zlA-1; Tue, 13 Dec 2022 10:10:26 -0500
X-MC-Unique: 9jVfQtIsNUCQderz893zlA-1
Received: by mail-qk1-f197.google.com with SMTP id f13-20020a05620a408d00b006fc740f837eso18072298qko.20
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 07:10:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R9+NLd3jxdSYaQWEDRounaRV4J5+VnhfuGCpFV9Scak=;
        b=gbFc1C3m1dc18fVjOdRfDFEepvQy4vH4S9e4r9P4vh8ZOO6LRd/XHBb+sKEda4/AGD
         ZQpWr8V0UX+jVAllY21v8HbgamB4iXeyJFNlkifanHSNS2h6Wnxf7IAw9X+9oEwqG/Ce
         Pz5GH+t1uXdJsey1pil1go1ZO0d81Pt3ekrhfQMPv16NiHWgk8xC0T3aF3jIX2Nw5nZ5
         E/I5MJk5Lf/PwVufItfiXklhHO772GRR9hGs87U6qD04B0KCOxlFWceyAciy+7+AgH3E
         AbNp7BsMEDU4PN3jNWU89hhUujeQ7RnAdRq0/Rnv66iBotKnzR8xgkgvMaBXXPxCOnIL
         rlvA==
X-Gm-Message-State: ANoB5pnPfFiIye9NUL/f7fFfLf8U3YqSuoRwW9bTfT0K7TAe52mFa9AP
        rqAZAYPQI17e06IZ6vfwBb7Vyzw4rdaBm3RhU9m9MWiZY724dBZOrd6qdRmLZ+pAZsnHO1l81eg
        Qz0hChnlcH2kYzis8yOdU+w==
X-Received: by 2002:a05:622a:4ac6:b0:3a5:2d37:eec3 with SMTP id fx6-20020a05622a4ac600b003a52d37eec3mr29577488qtb.4.1670943921484;
        Tue, 13 Dec 2022 07:05:21 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5luC77xo0MLHMxsKzx3NKc6Ahtqb9hI1942FD7kdl7LQrB5D6dHNM0CS1pPXwf5qk8fkH5Iw==
X-Received: by 2002:a05:622a:4ac6:b0:3a5:2d37:eec3 with SMTP id fx6-20020a05622a4ac600b003a52d37eec3mr29577465qtb.4.1670943921283;
        Tue, 13 Dec 2022 07:05:21 -0800 (PST)
Received: from x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id p10-20020ac8740a000000b003a4f435e381sm14250qtq.18.2022.12.13.07.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 07:05:20 -0800 (PST)
Date:   Tue, 13 Dec 2022 10:05:19 -0500
From:   Brian Masney <bmasney@redhat.com>
To:     Johan Hovold <johan@kernel.org>
Cc:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ahalaney@redhat.com, echanude@redhat.com, quic_shazhuss@quicinc.com
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sc8280xp: rename i2c5 to i2c21
Message-ID: <Y5iUr0V4QYoAa4Du@x1>
References: <20221212182314.1902632-1-bmasney@redhat.com>
 <20221212182314.1902632-2-bmasney@redhat.com>
 <Y5iSDehp72mQPc+h@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y5iSDehp72mQPc+h@hovoldconsulting.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 13, 2022 at 03:54:05PM +0100, Johan Hovold wrote:
> Note that the node is labelled qup2_i2c5 and not qup_i2c5.
> 
> That is, the QUP nodes are labelled using two indices, and specifically
> 
> 	qup2_i2c5
> 
> would be another name for
> 
> 	qup_i2c21
> 
> if we'd been using such a flat naming scheme (there are 8 engines per
> QUP).
> 
> So there's nothing wrong with how these nodes are currently named, but
> mixing the two scheme as you are suggesting would not be correct.

OK, I see; that makes sense. I'll drop this patch in v2 and fix up the
new nodes accordingly. Thank you for the explanation!

Brian

