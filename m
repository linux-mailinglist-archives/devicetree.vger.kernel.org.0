Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13AFC5AB88C
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 20:52:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230042AbiIBSw2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 14:52:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbiIBSw1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 14:52:27 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3545CE1936
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 11:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1662144741;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=FKifGkwx3P3TuJMAxmYdMT5EsvE4i26RC7LZW8MiN3w=;
        b=RqCMxc7A6M+WQliWySVrQMBkWOpMMXEtut8hQ2xbmSNOseu39QWalPt1LjrZ88EPzsYvX9
        gUpMJMHF778qXRVdOwq4chtMiRhUTTi7xFIZK9FX8cYKdPfNjfQBojxTHb4bwZlTXi8E0t
        hvjKOCOzNtZhKLExhrfZw+lPJfYK8sQ=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-459-Mh_A3Ce6MOiINbMYbvcn1Q-1; Fri, 02 Sep 2022 14:52:20 -0400
X-MC-Unique: Mh_A3Ce6MOiINbMYbvcn1Q-1
Received: by mail-qv1-f71.google.com with SMTP id h13-20020a0ceecd000000b00498f5b113e6so1830265qvs.21
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 11:52:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=FKifGkwx3P3TuJMAxmYdMT5EsvE4i26RC7LZW8MiN3w=;
        b=zGuU1fwFzUFc9E5d5XpGUy0zkxJ6YtVfQac1RUphEpFIeXMFFiKlSWUvEoVN9v/AP+
         tbEAZX9xRrDRlCDVEKKhb/9bKuWb6yfVucB66Jc6CUc4erZc9xx19aO+Qf7lasEhKZKv
         zkJ0BrPsSsfyMyoC/THu7eHQVppKfYd4OkBMA+1KlTXoFpaSDflCLZGUP3oEnVr44Bht
         AmaInvHSKGiLH4CK4s9F3wVBqQ9dmcoTqkQMwPtpPsYvk3jYGxyjd1r/lWl3z86js8N2
         dQHGRVvTO3hplN6WFkHYSayvfpc44aCzsplaboyC4sivWXL8kc61UU6eYPwaI+EguvJu
         eyVA==
X-Gm-Message-State: ACgBeo1j05Bd7X2dLtbyNYb9QRtdhhQOiCy8eonBonSYoLUTYHemgfPx
        pOTbpWFost45DcNY+MKW06rYLMnLWkxipVEats3A1AyCT209zsqDx67G/pi9u97yZSlAhSOKTmj
        pNQxakOJp4k8Z/SoL2nzbaQ==
X-Received: by 2002:a05:622a:347:b0:343:602e:d1eb with SMTP id r7-20020a05622a034700b00343602ed1ebmr30532917qtw.78.1662144739954;
        Fri, 02 Sep 2022 11:52:19 -0700 (PDT)
X-Google-Smtp-Source: AA6agR7tr9tS9qizyb79IxvlKkdB/Ye4dB5nps3mXFW4VQaBEhppeQgaHWU/cJf5tnPkK9ymaGO74g==
X-Received: by 2002:a05:622a:347:b0:343:602e:d1eb with SMTP id r7-20020a05622a034700b00343602ed1ebmr30532895qtw.78.1662144739744;
        Fri, 02 Sep 2022 11:52:19 -0700 (PDT)
Received: from halaneylaptop.redhat.com ([2600:1700:1ff0:d0e0::48])
        by smtp.gmail.com with ESMTPSA id j4-20020ac874c4000000b0031ef0081d77sm1403168qtr.79.2022.09.02.11.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 11:52:19 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        johan@kernel.org, Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH 0/3] regulator: dt-bindings: qcom,rpmh: dt-binding fixups
Date:   Fri,  2 Sep 2022 13:51:45 -0500
Message-Id: <20220902185148.635292-1-ahalaney@redhat.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This is my poor attempt at getting devicetree validation into a better
state for qcom,rpmh-regulator.yaml. This is a follow-up to Johan's
request for this over here:

    https://lore.kernel.org/linux-arm-msm/Yw8EE%2FESDUnIRf8P@hovoldconsulting.com/

In particular, I'm not certain patch 1 is the correct way to handle
things, and patch 2 makes validation too wide for the *-supply nodes.

I'd love any feedback here as I'm really not experienced in any of the
spaces (regulator, rpmh, or dt schema) so nit picking is welcomed.

Thanks in advance,
Andrew

Andrew Halaney (3):
  regulator: dt-bindings: qcom,rpmh: Use additionalProperties
  regulator: dt-bindings: qcom,rpmh: Specify supply property
  regulator: dt-bindings: qcom,rpmh: Indicate regulator-allow-set-load
    dependencies

 .../bindings/regulator/qcom,rpmh-regulator.yaml       | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

-- 
2.37.2

