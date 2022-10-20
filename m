Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 075406065E1
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 18:33:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbiJTQdv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 12:33:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229966AbiJTQdr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 12:33:47 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F6451C4EEE
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 09:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1666283625;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=+PN9Zmo6gmcoTAvY3Ztc9ZICuuK1P6MwzJ+pG+ZS7pk=;
        b=DG+Nvo7StrcPp+qo/WcbzO1hDPbdVoCnNvVm0a4cvjTKYgJhN65Z9GngUZY6qI/0FyGlsh
        Hxw0H3eA7eyHXY86DzbnXK4+OB5gmOZFEbkF0CZmTnYmpo4wYwZ/npeJc3/FALg2o1dLZ0
        Tfbs3IDQBnwkv8IC0eCcJWQ7zQ4SUSk=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-641-ieZnczwjOMWt5S6EHPoFow-1; Thu, 20 Oct 2022 12:33:44 -0400
X-MC-Unique: ieZnczwjOMWt5S6EHPoFow-1
Received: by mail-il1-f197.google.com with SMTP id j29-20020a056e02219d00b002f9b13c40c5so257647ila.21
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 09:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+PN9Zmo6gmcoTAvY3Ztc9ZICuuK1P6MwzJ+pG+ZS7pk=;
        b=581RzVxOdsAB71eKIxtdBTfc47JErt200OJvbCegi1HSHnULdWBF4PYRQqD7hdhbfG
         8NdeOezaxB5lG/jUqTOHxEtq3+PA+owNHdHjoZK2I3JOd2EwtSq+iHy4vQhnSVe8v4jd
         P0LE+yf5Nf3IINg2oNX3Wu44kfuhtfp/Xl+/xdyndSo222T83dtEKqVXowkXaXFMI6PZ
         uFAy/c1bhyQnBROg60VFeViRi0HR29pCzOZqbqY+CNgSAd1oLPe5KGwbQjs6cLZcMGsk
         k10ZpzPfriylNweDGtWaJDiP7PCs9UDO9PxLGTzpKA+2g27zRVzQeQIqxUYyPEI0l65h
         qsaA==
X-Gm-Message-State: ACrzQf3f5zFplM+iuQhRVhBegIOffiqjElp7+pviSBth4H5fTwRY6ipF
        ti0hZPb/ysHaMeMBmuAekiOmZTe9sAgYqF23RwMB6rzDxRKvKdIL0387fVHuBEGDIPBREpA75Nh
        t7GnOtH1reGz8bvd+o3hwMg==
X-Received: by 2002:a05:6e02:1546:b0:2fd:1a72:8825 with SMTP id j6-20020a056e02154600b002fd1a728825mr10907259ilu.83.1666283623519;
        Thu, 20 Oct 2022 09:33:43 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7XHdv+alEzff5ONYljf0u9Vv1MKFPW6k4p9y5USRUJuL/pvytZkuf5ZoBiDEPgV8q09Ix6lw==
X-Received: by 2002:a05:6e02:1546:b0:2fd:1a72:8825 with SMTP id j6-20020a056e02154600b002fd1a728825mr10907245ilu.83.1666283623274;
        Thu, 20 Oct 2022 09:33:43 -0700 (PDT)
Received: from x1 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id c4-20020a92cf44000000b002ff36cb0a62sm883868ilr.27.2022.10.20.09.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 09:33:42 -0700 (PDT)
Date:   Thu, 20 Oct 2022 12:33:40 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Parikshit Pareek <quic_ppareek@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: qcom: Document additional
 sa8540p device
Message-ID: <Y1F4ZMAhHWRd9c3m@x1>
References: <20221020073036.16656-1-quic_ppareek@quicinc.com>
 <20221020073036.16656-2-quic_ppareek@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221020073036.16656-2-quic_ppareek@quicinc.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 20, 2022 at 01:00:35PM +0530, Parikshit Pareek wrote:
> Add the qdrive3 ride device to the valid device compatibles found on the
> sa8540p platform.
> 
> Signed-off-by: Parikshit Pareek <quic_ppareek@quicinc.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>

