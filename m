Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 137C858E492
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 03:37:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiHJBgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 21:36:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230151AbiHJBgf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 21:36:35 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 383FB4F6A3
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 18:36:34 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id f30so11995932pfq.4
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 18:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=/3NuyMRQzoKC+30JhlTYDeaL3RcsG7yIW6Z9cFFfjYs=;
        b=TIk4h5vytpc27gGiVHL/Zrmje4fW6GQvWgMmzc0aDOrKc5mzhv1gN47UGWzYCEzXzh
         LxEe/VPiJdO9nnVQlrNDve8jixOsZRZzopSYmaGbn1ac3OfqRkLiP5hcRkqPF/20kAq9
         RmCYIbdYelLHyZ1iGeBMiXxQ0wG8KoKFWWM/3MOaHcaSdVrHVIhJ1zS1BhAo/gpsyLUp
         LkmwdiVI4ZP075vqmfQeQCkvcHH4n9gcfm3giqM/yUkRuq0d5S3PtICuhUcqxpkXAYKU
         uOR8m30G4W4mOzjrlQ0+OtsG76wdPkSJ4LoJlD2fPco9hMxfvKWel1jS1usnVh5GtPIG
         8HTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=/3NuyMRQzoKC+30JhlTYDeaL3RcsG7yIW6Z9cFFfjYs=;
        b=i2f9Z1nnWnbVmR18HztjAT8c4NJ988swtV1lOZr3KjFqrDOnjtdqWAwzOGK/rLyrOW
         IqAMGLblNnb+Ky06YOlKWSAk5Bh0aIVlst5ty4SRYjXvCA5NOywiySZ8IsfxENOtILWu
         /2Wa04hw/dx5bvvuC/4Lj5oR/JYZzccpFZHIKHSDvaPIl5uQJroJrLFRqkKK8dgxs164
         7SSvuJfZ3Ow2eEM9nAPKKKE0cH8iUaSdVVGRBLcXBxovNLOcX1lqX2jFiP35JJ49VHNp
         FCw12Uty4cpTW7oAZmHycg2Gte5GrnwQ4AXDdHHzeHUM7Cu5tONm1MEYv/mBv35v8Cfz
         ckOQ==
X-Gm-Message-State: ACgBeo1UOGLl4Cg2lfcyqVXhzXm+YCibSATQRTHa5EtkzrAYRFmXTulw
        JGeXCGgD9zYUSknnIcYQa2U=
X-Google-Smtp-Source: AA6agR54MJrLFSYH1fgiFQjFXxiww0+dZxx5K2tkUWlOhgLPmnfl1+2I00/DFJahPjW3j5GLPcFDow==
X-Received: by 2002:a62:6206:0:b0:52d:39c5:298 with SMTP id w6-20020a626206000000b0052d39c50298mr24870107pfb.30.1660095393729;
        Tue, 09 Aug 2022 18:36:33 -0700 (PDT)
Received: from a-VirtualBox.tendawifi.com ([101.224.225.209])
        by smtp.gmail.com with ESMTPSA id d22-20020a17090a115600b001f4dd3b7d7fsm265197pje.9.2022.08.09.18.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 18:36:33 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     robh@kernel.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, broonie@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Date:   Wed, 10 Aug 2022 09:36:27 +0800
Message-Id: <20220810013627.1156202-1-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220809183412.GA2152771-robh@kernel.org>
References: <20220809183412.GA2152771-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>> +  everest,jack-detect-inverted:=0D
>> +    description:=0D
>> +      Defined to invert the jack detection.=0D
>=0D
>What's the difference with this and bit 3 of everest,jack-pol?=0D
>=0D
>We already have numerous vendor properties for jack detect. Can we come =0D
>up with something common?=0D
>=0D
>The problem with 'inverted' is it assumes you know the non-inverted =0D
>state. Better to just state high or low.=0D
=0D
This property is in compatible with the property in es8316.c and sof_essx83=
36.c.=0D
(which is not documented in es8316.yaml, another problem)=0D
There is a quirk in sof_essx8336.c so that when the user find they're havin=
g a =0D
wrong jack insert configuration, they can set the quirk to invert it.=0D
