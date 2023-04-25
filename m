Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8356EE74E
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 20:04:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234749AbjDYSEi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 14:04:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234963AbjDYSEh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 14:04:37 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE96CD30A
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 11:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1682445822;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=mLRDaEM8IkNU4aroONTY8q5AePgj7Z5Af/7/yOM3ivs=;
        b=PevYoZejm0YZm0ADwPkEWjnmqEA3rxFksg3sHZmBKv+NrI9l4RpVSNh+PSKcP4fq3RGoUZ
        /YOwI73hlPiI0c3C2+yEB7CWabilX1qs48o1vglFh0QUxZx+nUkB42jdBFd61D2km8vR4G
        zb90gEFTT3p0CDGU8odTJ6CDZ1O6e6s=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-654-MgLzWGnHMLCmBe-Rzg7bqg-1; Tue, 25 Apr 2023 14:03:40 -0400
X-MC-Unique: MgLzWGnHMLCmBe-Rzg7bqg-1
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-3f0a65d5a1dso25276171cf.2
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 11:03:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682445820; x=1685037820;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mLRDaEM8IkNU4aroONTY8q5AePgj7Z5Af/7/yOM3ivs=;
        b=QWFX3a8R8/T5KLuPOgRtIC+cK9ONFddQWHtJJVZ2OvxWrfIOMAVbW/vsq7XLaG6WV3
         RLxu2Ym6YqMY/UN18Hyo0BopFxo5fcoNDRbkXTWi5+f0VitvH+6O4qOGuFAaI7nzv5w9
         5DjD2QLQsc24edVh2DSX+rkpQZmLZxs7BYcAm9+atBmpT484CmZZO28Gk0QAlDJBcOVS
         677ymn7Shh/QmW84yY36kMameqkdIMlkSD6skKpHTyu7bzyLhlc/7PxSZt+Kwc14AivP
         n7khkbTM51Rm26PF86dc4aEOs09DVtSiRwIQNEmAJaBBXT9x3YKbQMsZ3QIMfXeh92uj
         UKWg==
X-Gm-Message-State: AAQBX9eGcivq4HkiDO8RXfS0OOoZjzpi/zDQiqImgzYTbvWyS4Cp5v/E
        2Ou0lC2L63ISkviXaMrp3MZsM3o9+vN1pgH5lnnM1VPhlpaQtoZJZsoN71q/lq/MZTQm4BhNG7a
        YHj1r26mCUAs3RfG/3MtdrA==
X-Received: by 2002:ac8:5c01:0:b0:3e1:59e8:745a with SMTP id i1-20020ac85c01000000b003e159e8745amr28268781qti.3.1682445820203;
        Tue, 25 Apr 2023 11:03:40 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZR+URkOBjqHmQb78faZMLxITsne2FMxrzysNlFS71f08K8wvOrg5C2bC9hBB1dS3N1M/UwJg==
X-Received: by 2002:ac8:5c01:0:b0:3e1:59e8:745a with SMTP id i1-20020ac85c01000000b003e159e8745amr28268745qti.3.1682445819878;
        Tue, 25 Apr 2023 11:03:39 -0700 (PDT)
Received: from fedora (modemcable181.5-202-24.mc.videotron.ca. [24.202.5.181])
        by smtp.gmail.com with ESMTPSA id ge8-20020a05622a5c8800b003e3914c6839sm1868947qtb.43.2023.04.25.11.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Apr 2023 11:03:39 -0700 (PDT)
Date:   Tue, 25 Apr 2023 14:03:36 -0400
From:   Adrien Thierry <athierry@redhat.com>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Shazad Hussain <quic_shazhuss@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Message-ID: <ZEgV+H3yZLp48Dlc@fedora>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <ZEcEGJiikEC2wIVE@fedora>
 <CAA8EJpr27=2jAXbamN6J7yF+7G=L5Af8+XReB5UnFuihcEwMQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpr27=2jAXbamN6J7yF+7G=L5Af8+XReB5UnFuihcEwMQA@mail.gmail.com>
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry,

> Semi-random suggestion, but could you please try using
> clk_regmap_phy_mux/clk_regmap_phy_mux_ops for USB pipe clk src?

Which specific clock are you refering to? I'm not very familiar with
those, in the device tree I'm seeing "pipe" clocks for usb_0 and usb_1
phys, but not for usb_2, which is the one that's causing issues.

Best,

Adrien

