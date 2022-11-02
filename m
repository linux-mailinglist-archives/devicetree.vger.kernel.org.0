Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE36B616CAF
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 19:41:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231347AbiKBSlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 14:41:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231211AbiKBSlc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 14:41:32 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 918442CDF0
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 11:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1667414430;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=z6U2QWI3L7CELeN2uR9v9BKzosx2j/rMnyai3sfNG/I=;
        b=I0mGPui4NpAu/5e86YRU+5O2E7k5zo+KNsiJUEayAB+rFi1Hpl62ljrLPkNP/szVXmrq/K
        ovHyLjsC6DVvT6DWoBJV2KvkSxAb6REufsrenaVEfOpRG0n0/JPfg+s1RUXtVokaAeZb6f
        MFSEnXB99c4veaGSAFi1/ew6b+QtsWo=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-256-rGUSqeVgPoKdCi1FX2Sc4Q-1; Wed, 02 Nov 2022 14:40:29 -0400
X-MC-Unique: rGUSqeVgPoKdCi1FX2Sc4Q-1
Received: by mail-qt1-f199.google.com with SMTP id g3-20020ac84b63000000b003a529c62a92so6162121qts.23
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 11:40:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z6U2QWI3L7CELeN2uR9v9BKzosx2j/rMnyai3sfNG/I=;
        b=6GDeLgXcVP+3zxEuoHwvRXXyC8uQJmYHQPJo+JYsoiibUHnGpLqx0+X1h9dw3eGnMo
         nc3SAN4BFVU2snDbcRLX2vbjvgpkIrETo1un5yWu178pZX5dVl2+SY0zPcOHAmbYqPYJ
         y3qwuvMuwHewzO9V6Myu65yCqen5web9nKPcIco0S/Cau/XKS9rR5JVWSuj8Ya1bg1ld
         qre+DWRSxqb+O1t5dQ1gxIbHctwSu1Ll9R6t7WdeakJL28bF/yCEF8+EptU+Bh3pmcIO
         KVsg8h8eVyhTUM/XuQV7RN2rRU4Xz1xfFtkpERDqlZ5wBnNESE9TcY3S+7GcVMjxltil
         TiWA==
X-Gm-Message-State: ACrzQf3Yih1IVofDLre5/XCUgpGEDUb/fq/XNmQwlRRy473vcMUBwMTt
        8AsuEwgdbxRM1mDlsWZpsbcH1eEdbAUejdobYF832QoELRCJCP7he3oJRVp3p6ySi400mfChrXd
        nmF+n4LjgTko8EM3MRzo4VA==
X-Received: by 2002:a05:620a:2984:b0:6fa:6636:d4e5 with SMTP id r4-20020a05620a298400b006fa6636d4e5mr2471923qkp.622.1667414429136;
        Wed, 02 Nov 2022 11:40:29 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5T4ytHu3K/k7aIWWR9fQduopTkBaK9CqkhKpSxE2oFDFcMEEUfWbOKCZP3zXChPWrTaqbUlg==
X-Received: by 2002:a05:620a:2984:b0:6fa:6636:d4e5 with SMTP id r4-20020a05620a298400b006fa6636d4e5mr2471904qkp.622.1667414428917;
        Wed, 02 Nov 2022 11:40:28 -0700 (PDT)
Received: from localhost (pool-100-0-210-47.bstnma.fios.verizon.net. [100.0.210.47])
        by smtp.gmail.com with ESMTPSA id bm2-20020a05620a198200b006cfc7f9eea0sm8930499qkb.122.2022.11.02.11.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 11:40:28 -0700 (PDT)
Date:   Wed, 2 Nov 2022 14:40:27 -0400
From:   Eric Chanudet <echanude@redhat.com>
To:     Parikshit Pareek <quic_ppareek@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Brian Masney <bmasney@redhat.com>,
        Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: add SA8540P ride(Qdrive-3)
Message-ID: <20221102184027.236affysihqnivh5@echanude>
References: <20221102103552.29388-1-quic_ppareek@quicinc.com>
 <20221102103552.29388-3-quic_ppareek@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102103552.29388-3-quic_ppareek@quicinc.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 02, 2022 at 04:05:52PM +0530, Parikshit Pareek wrote:
> Introduce the Qualcomm SA8540P ride automotive platform, also known as
> Qdrive-3 development board.
> 
> This initial contribution supports SMP, CPUFreq, cluster idle, UFS, RPMh
> regulators, debug UART, PMICs, remoteprocs and USB.
> 
> The SA8540P ride contains four PM8450 PMICs. A separate DTSI file has
> been created for PMIC, so that it can be used for future SA8540P based
> boards.
> 
> Signed-off-by: Parikshit Pareek <quic_ppareek@quicinc.com>
> Tested-by: Brian Masney <bmasney@redhat.com>
> Reviewed-by: Brian Masney <bmasney@redhat.com>

Using the default defconfig on next-20221102, preventing
qcom_q6v5_pas.ko to load avoids the board crash observed in v5, as
found during v6 review by Brian.

Tested-by: Eric Chanudet <echanude@redhat.com>
Reviewed-by: Eric Chanudet <echanude@redhat.com>

-- 
Eric Chanudet

