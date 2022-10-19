Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAA0160499E
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 16:46:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231265AbiJSOqy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 10:46:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbiJSOq0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 10:46:26 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3C70156252
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 07:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1666189966;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=5YibLNy+OciDPg1RqQtPWy91evf3zRYGT05L7hMD1SE=;
        b=XMmjW232vNZUtQ2gdCcRA7a4fdA4jMFXg+t/h+AfkKcoKRsNvgFJdH0xM1E9lbf05u+0kj
        lVc+Ub0QZAIT21zxeKsg3octwXrIjsO4/MLx/KxXMFGrM7m2ahWRwMMgOv3yKEC6jq+1KB
        MqU06aJs6/NXWAmNVMYwpM90XvLia3c=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-443-o2GpSASDP1yarM8ixtrGIA-1; Wed, 19 Oct 2022 10:32:44 -0400
X-MC-Unique: o2GpSASDP1yarM8ixtrGIA-1
Received: by mail-io1-f72.google.com with SMTP id r12-20020a5e8e4c000000b006bc3030624fso13396053ioo.23
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 07:32:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5YibLNy+OciDPg1RqQtPWy91evf3zRYGT05L7hMD1SE=;
        b=hxnnOzWW8pTq2sRfRBhFr4e9UBx6hjoF/rlYE1Xb1KKctMVm2niz1h2s9jPNra77bO
         M9ZfBJULghDp+SwqGKIGQR2i9PK5qK1ib9SNJiJ1yFI/iC1oVfEdL32lbDELjkh2C21B
         Km/etQfzXPqrN9dGtz/Z34WWJbduFAhg7a0yP1p/Hw0nyr/qFdjZHtGVMpkRDmYDEAUa
         xQR/2+jcHmS+l0thhir+88uv+xrFjPciXGFFsyjhj3ZV1xOAhInBLBuyXFBWRLD1cSjj
         TYQAs9ReW6PCXp6AlC/tSx/k/AJq/CHJRU4LtMWnFPwWxOoZOhk1uLkUd3szGgY7H+bh
         F8oA==
X-Gm-Message-State: ACrzQf2+0OpGPHYkPXBIhAzLudRlB5JQy4hYnOi5XmjjIuYz4BCzIetl
        +5ug+2DlkmwZunwCiaR8bxFr70dfAB96wIdmW31S+6TbmaNmsXcCdxEaK1Dc9xjW04/GkFCZhJf
        +y/Q5WfIaf2/96Q0R54nCuQ==
X-Received: by 2002:a02:54c1:0:b0:363:453e:2ccb with SMTP id t184-20020a0254c1000000b00363453e2ccbmr6451897jaa.228.1666189964203;
        Wed, 19 Oct 2022 07:32:44 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6/HkVuS6wNDB9egoiQiNu3qMpbMyAK3j1AnEKd9qXTPxLsvFR1yo6X9O/te7EZm3+VoF9IlA==
X-Received: by 2002:a02:54c1:0:b0:363:453e:2ccb with SMTP id t184-20020a0254c1000000b00363453e2ccbmr6451869jaa.228.1666189963941;
        Wed, 19 Oct 2022 07:32:43 -0700 (PDT)
Received: from x1 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id f20-20020a02a114000000b00363961f0f2dsm2140039jag.115.2022.10.19.07.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 07:32:43 -0700 (PDT)
Date:   Wed, 19 Oct 2022 10:32:41 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        quic_vbadigan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] PCI: qcom: Add basic interconnect support
Message-ID: <Y1AKiTkLa23idaf2@x1>
References: <20221017112449.2146-1-johan+linaro@kernel.org>
 <20221017112449.2146-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017112449.2146-3-johan+linaro@kernel.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 17, 2022 at 01:24:49PM +0200, Johan Hovold wrote:
> +	/*
> +	 * Some Qualcomm platforms require interconnect bandwidth constraints
> +	 * to be set before enabling interconnect clocks.
> +	 *
> +	 * Set an initial peak bandwidth corresponding to single-lane Gen 1
> +	 * for the pcie-mem path.
> +	 */
> +	ret = icc_set_bw(pcie->icc_mem, 0, MBps_to_icc(250));

[snip]

> +	speed = FIELD_GET(PCI_EXP_LNKSTA_CLS, status);
> +	width = FIELD_GET(PCI_EXP_LNKSTA_NLW, status);
> +
> +	switch (speed) {
> +	case 1:
> +		bw = MBps_to_icc(250);
> +		break;
> +	case 2:
> +		bw = MBps_to_icc(500);
> +		break;
> +	default:
> +	case 3:
> +		bw = MBps_to_icc(985);
> +		break;
> +	}

Just curious: These platforms have a 4 lane PCIe bus. Why use 985
instead of 1000 for the maximum?

Brian

