Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A6FD60663B
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 18:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbiJTQuG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 12:50:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbiJTQuE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 12:50:04 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E7EF5EDF6
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 09:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1666284600;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=uoGto+gNH92mAm1Kdu+EjWKJigMkRDwEWaF/cwWxdwc=;
        b=GYdfQh3U4RN6vKhH1QPVMza4P+jvKhYtUM58UCFv8J+4NOt1HDhzyvKvd2q7EJtbUac+06
        EZsnJUnlC2DbHGicn0R3kFvvw1XXOJUannN/yITK36A7cAD2IbccN44AKJDehWCwak3P1J
        VMAvtVMIgkcznbWubztknhvY/IZqxWE=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-327-SEdnUacoM72wvrc9a61HYQ-1; Thu, 20 Oct 2022 12:49:58 -0400
X-MC-Unique: SEdnUacoM72wvrc9a61HYQ-1
Received: by mail-il1-f197.google.com with SMTP id z4-20020a921a44000000b002f8da436b83so307257ill.19
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 09:49:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uoGto+gNH92mAm1Kdu+EjWKJigMkRDwEWaF/cwWxdwc=;
        b=fHDRd3d51tVyyI6k2SqUyGuay/0bHUVULmT1g811yyajIgt0ijhzZ1Py9qUJz5LNVn
         emAR2XzTFUHd/0Jqv1zeCuR8ROoGa8PFknWlphPSEg730vEk/7c0MJCJNZKgLskE0sFP
         5CyPItgcfoue+IEmkwZ5Kp/zglJE+nG45yvVKKjv9WppxYhQTyLVd/oFSOtqL0NKWMy3
         NgprHgAb5ACqKmO2dbqQ4tbnT4xCuUFHyKTNrJONxC8ghFuCvSvZss4mibJr8s9jhogk
         XDRDaKmxkaVE9DAoz0kqwFGUXCxQj0DXvT2IEXg0tFOToTjX6R/Bkmc7vXyTUDZSpJYH
         4//Q==
X-Gm-Message-State: ACrzQf0HHYeXeKCmKKedwtfbYfpCUVe+x0OBxJ/0cREBZJlWp5x694Bb
        rHhAIkG0TT6GMLPOFFVLHKIMXuf0N/TNmLA4ytdSb6+eNBkcZqYbkle/KceFgJIZf6edgQrNdcc
        jU2F9ZHP77Mm6n4BBcZOJzw==
X-Received: by 2002:a05:6638:4987:b0:363:c403:28ff with SMTP id cv7-20020a056638498700b00363c40328ffmr10097989jab.235.1666284597639;
        Thu, 20 Oct 2022 09:49:57 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5f69+U/H3YHmxW+EIukcVAqLTXZEmABQS3o/TzzGrb3p1R4FOeCnxcVZxE631gJUxtqBzN1Q==
X-Received: by 2002:a05:6638:4987:b0:363:c403:28ff with SMTP id cv7-20020a056638498700b00363c40328ffmr10097946jab.235.1666284597136;
        Thu, 20 Oct 2022 09:49:57 -0700 (PDT)
Received: from x1 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id y19-20020a056602121300b006bb5af55ddfsm3477224iot.19.2022.10.20.09.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 09:49:56 -0700 (PDT)
Date:   Thu, 20 Oct 2022 12:49:54 -0400
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
Message-ID: <Y1F8MqeHxj5IaLtx@x1>
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
> On Qualcomm platforms like SC8280XP and SA8540P interconnect bandwidth
> must be requested before enabling interconnect clocks.
> 
> Add basic support for managing an optional "pcie-mem" interconnect path
> by setting a low constraint before enabling clocks and updating it after
> the link is up.
> 
> Note that it is not possible for a controller driver to set anything but
> a maximum peak bandwidth as expected average bandwidth will vary with
> use case and actual use (and power policy?). This very much remains an
> unresolved problem with the interconnect framework.
> 
> Also note that no constraint is set for the SC8280XP/SA8540P "cpu-pcie"
> path for now as it is not clear what an appropriate constraint would be
> (and the system does not crash when left unspecified currently).
> 
> Fixes: 70574511f3fc ("PCI: qcom: Add support for SC8280XP")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Brian Masney <bmasney@redhat.com>

