Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 821416BA0CB
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 21:33:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbjCNUdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 16:33:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbjCNUdY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 16:33:24 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53CF751F8F
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 13:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1678825957;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Cf1UmW52NoHn8X3sKwbcCJsfKhtTUiAk8pFQZqhtqWY=;
        b=F68SDOqRWqpLXiydwYWqxYoOYfZCgZ40ZMgMQ8MZ395r3VgbtuyP8lDFQ7jns89GjngiR/
        piT/7Q3UAzbQSf7pu1DSVhIlTdm/BXx6v34tKGxCIPAIOIoL85Fewk1/XczYyBNOX04GEy
        xoTBg3w9ejPpMaR5vQj+peFxLEOSLEI=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-533-03ehFacNPratkboUV4fdKg-1; Tue, 14 Mar 2023 16:32:35 -0400
X-MC-Unique: 03ehFacNPratkboUV4fdKg-1
Received: by mail-qv1-f72.google.com with SMTP id x10-20020ad440ca000000b005800220da38so9906895qvp.14
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 13:32:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678825955;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cf1UmW52NoHn8X3sKwbcCJsfKhtTUiAk8pFQZqhtqWY=;
        b=G43/wSUOLB68q299ORSnV0dWHbPVHL2cndXZ0w69rZMKlCfF2VBAbesoFOpoVnYgcg
         Yh8z9uDR1ykAOq2mgx9JR+STRQir+dF7MOFLzlkBx+0NkGu5iodplWRWj13VNIWW/e2E
         DJSGll6ETAHnCqKDCdSTZ/wz25bLG9CZ2DK1q5ZJw/7gvDmg+NhVJXJOZxBvxSzbLh6j
         6KmdbLzOEjmv4yz+bQ1MtIu3TWSY8k3TIhUxBIA2+Zw3Ej8XrHMZgOGUBssetUFpAN0S
         84rgxbsWToB0aLLskHUV8iZnxJOaOpWqdPJUEvlLop1fZPq6e114YfG89SXas8M6f9//
         dasA==
X-Gm-Message-State: AO0yUKWTLtYErAO/D9vLIRYIIsGygf/06N9+z8zimphYipE77L7vpXSj
        xOmXKXwMGTnu4cCAbxkeL7IPkeJda/zFotyYfrkUon3ouLnyEr9CyPArFiC6VyuUVxPF9Cjf1Yw
        3NCJC5Xj+jDVmSjnm4XUPhA==
X-Received: by 2002:ac8:5acc:0:b0:3bf:dbb4:3bcc with SMTP id d12-20020ac85acc000000b003bfdbb43bccmr67624062qtd.4.1678825955099;
        Tue, 14 Mar 2023 13:32:35 -0700 (PDT)
X-Google-Smtp-Source: AK7set8R4DgwPeDaAruB2pqEAMS0/gKRIQCP9kh/wYGXFze+xiVFd4MTcnh222nahDA3ZLMboA61mw==
X-Received: by 2002:ac8:5acc:0:b0:3bf:dbb4:3bcc with SMTP id d12-20020ac85acc000000b003bfdbb43bccmr67624024qtd.4.1678825954705;
        Tue, 14 Mar 2023 13:32:34 -0700 (PDT)
Received: from fedora (modemcable181.5-202-24.mc.videotron.ca. [24.202.5.181])
        by smtp.gmail.com with ESMTPSA id t21-20020ac85315000000b003b860983973sm2403343qtn.60.2023.03.14.13.32.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 13:32:32 -0700 (PDT)
Date:   Tue, 14 Mar 2023 16:32:30 -0400
From:   Adrien Thierry <athierry@redhat.com>
To:     Krishna Kurapati <quic_kriskura@quicinc.com>
Cc:     Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Felipe Balbi <balbi@kernel.org>, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, quic_pkondeti@quicinc.com,
        quic_ppratap@quicinc.com, quic_wcheng@quicinc.com,
        quic_jackp@quicinc.com, quic_harshq@quicinc.com,
        ahalaney@redhat.com, quic_shazhuss@quicinc.com
Subject: Re: [PATCH 0/8] Add multiport support for DWC3 controllers
Message-ID: <ZBDZ3q6b4+0IBi4s@fedora>
References: <20230310163420.7582-1-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230310163420.7582-1-quic_kriskura@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krishna,

I'm unable to apply your patch series, it looks like patch 2 is malformed.
'git am' prints the following:

  Applying: dt-bindings: usb: Add bindings for multiport properties on DWC3 controller
  Applying: usb: dwc3: core: Access XHCI address space temporarily to read port info
  error: corrupt patch at line 83
  Patch failed at 0002 usb: dwc3: core: Access XHCI address space temporarily to read port info

Are you able to apply the series on your side?

Best,

Adrien

