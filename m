Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3F8F728B7A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 01:00:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbjFHXA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 19:00:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjFHXAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 19:00:25 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 420F22D74
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 16:00:20 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-3f80cd74c63so10816831cf.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 16:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1686265219; x=1688857219;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:from:to:cc:subject:date:message-id:reply-to;
        bh=0ZUFvM1Uo7r0YhlS9tZgFlzbUmN9cenI3ew/E1cVwT0=;
        b=TC4mF6FbI152FBnENUTQJhhUbCy2EQWh8QEGcONiOUbMqNfYmJ4QUDfIkFzV6uyEWk
         orXtmT8ezutmY52LKT7qCbs5J89/UGO+OFqTTIySBt2z+wrJq0i/wCZz6nc2VEbFyDYd
         GAuCI+uqWUwHF1fHR51N0YqsnEnT11ncC7Alw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686265219; x=1688857219;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0ZUFvM1Uo7r0YhlS9tZgFlzbUmN9cenI3ew/E1cVwT0=;
        b=WwK6We0T0AXeaI764wus59YkZderA3ePIlvpMZJPwN4zNlf9xolcUdWngclaGLGGPR
         k/jy1CzQq6MkUzRjgh+zsYZUGPCVEJ05mPogbaAWnwj0o7C9BGqqCc3+lyB3ttjsdj7p
         ETb3BAhtXpMdJfxECDNVF2ch3CkOWEcGBi/QlbrvrtFQc3F9yUex/tZ9zxMqsIAhFoiT
         QjGz1uIv7kshqgX5nS1b8i3DzCAOL1uDozPySCQWo4p7T3TszCnTOwXBWMWcQp0/mdAL
         wZi+nTnBwFF/P9oG7zRPC2GQpBiur2uzpE0ATYuiyRbJMvRI8uLvG6oqoI00i8pIXXVx
         p6xA==
X-Gm-Message-State: AC+VfDzutmePe1YgNzEHbzAC/9RU927riNZ5vtmHSjBqU6rdI19gTe3+
        fJh0K+efEVeYdE3Cv4IXfJiNVA==
X-Google-Smtp-Source: ACHHUZ6Ql0snsQS0G1X2JTKASP4n328cwocvOcYLG5iCvJ8XWdpTMzRYMZEH3QEDuk+ojoznPswcNw==
X-Received: by 2002:ac8:7d06:0:b0:3f4:427:dbb8 with SMTP id g6-20020ac87d06000000b003f40427dbb8mr9886672qtb.2.1686265219076;
        Thu, 08 Jun 2023 16:00:19 -0700 (PDT)
Received: from bcacpedev-irv-3.lvn.broadcom.net ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id q5-20020ad45ca5000000b006238d903f9bsm737933qvh.42.2023.06.08.16.00.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jun 2023 16:00:18 -0700 (PDT)
Subject: Re: dt_binding_check report false alarm?
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        f.fainelli@gmail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
 <20230608145742.GA2609597-robh@kernel.org>
From:   William Zhang <william.zhang@broadcom.com>
Message-ID: <b710492a-4ee0-0710-b727-0be519b5c116@broadcom.com>
Date:   Thu, 8 Jun 2023 16:00:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20230608145742.GA2609597-robh@kernel.org>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
        boundary="00000000000065cc0b05fda63753"
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--00000000000065cc0b05fda63753
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 06/08/2023 07:57 AM, Rob Herring wrote:
> On Wed, May 24, 2023 at 10:02:41PM -0700, William Zhang wrote:
>> Hi,
>>
>> It seems dt_binding_check reports a false error when run on this
>> modified yaml. I picked this simple file just to demostrate this issue.
>> Basically I made the interrupts and interrupt-names as optional
>> properties. But when there are two interrupts present, then
>> interrupt-names are required.  However in the example, I don't define
>> interrupts and interrupt-name at all, the dt binding check reports error
>> that interrupt-names are required:
>>
>> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>>    LINT    Documentation/devicetree/bindings
>>    CHKDT   Documentation/devicetree/bindings/processed-schema.json
>>    SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>>    DTEX    Documentation/devicetree/bindings/crypto/fsl-imx-scc.example.dts
>>    DTC_CHK Documentation/devicetree/bindings/crypto/fsl-imx-scc.example.dtb
>> Documentation/devicetree/bindings/crypto/fsl-imx-scc.example.dtb: crypto@53fac000: 'interrupt-names' is a required property
>> 	From schema: /home/william/projects/linux/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>>
>> This does not make sense to me as name is required only when there are
>> two interrupts. Can someone familar with this please help to check if I
>> miss anything in the yaml file or it is indeed a bug in binding check?
>>
>> Thanks,
>> William
>>
>> ---
>>   .../devicetree/bindings/crypto/fsl-imx-scc.yaml     | 13 +++++++++----
>>   1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>> index 563a31605d2b..c37a3a64a78c 100644
>> --- a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>> +++ b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>> @@ -32,11 +32,18 @@ properties:
>>     clock-names:
>>       const: ipg
>>   
>> +allOf:
>> +  - if:
>> +      properties:
>> +        interrupts:
>> +          minItems: 2
> 
> This is a quirk of json-schema in that the 'if' will be true if the
> property is not present. Adding this to the 'if' should fix the problem:
> 
> required:
>    - interrupts
> 
Thanks Rob!  This works!

>> +    then:
>> +      required:
>> +        - interrupt-names
>> +
>>   required:
>>     - compatible
>>     - reg
>> -  - interrupts
>> -  - interrupt-names
>>     - clocks
>>     - clock-names
>>   
>> @@ -49,6 +56,4 @@ examples:
>>           reg = <0x53fac000 0x4000>;
>>           clocks = <&clks 111>;
>>           clock-names = "ipg";
>> -        interrupts = <49>, <50>;
>> -        interrupt-names = "scm", "smn";
>>       };
>> -- 
>> 2.34.1
>>
> 
> 

--00000000000065cc0b05fda63753
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
YDZuuBJwnyCzevMoPtVYPharioL5H3BRnQi8YoTXH7/uRo33dewYFm474yFjwwnt82TFtveVZkVq
6h4WIQ4wTcwFfET8zMkELnGzS5SHCl8sPD+lNxxJ1JDZYwIDAQABo4IB2zCCAdcwDgYDVR0PAQH/
BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5nbG9i
YWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsGAQUF
BzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAy
MDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xv
YmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNybDAlBgNV
HREEHjAcgRp3aWxsaWFtLnpoYW5nQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAf
BgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUq65GzwZxydFHjjYEU/9h
xHhPWlwwDQYJKoZIhvcNAQELBQADggEBAA2hGG3JPAdGPH0ZdohGUCIVjKz+U+EFuIDbS6A/5jqX
VhYAxZlzj7tSjUIM7G7IhyfqPC46GKJ/4x+Amz1Z6YxNGy71L68kYD6hIbBcA5AM42QBUufly6Oa
/ppSz3WoflVyFFQ5YXniZ+eU+2/cdnYZg4aVUnFjimOF5o3NfMLzOkhQNxbaDjFUfUYD8hKmU6v4
0vUBj8KZ9Gi1LIagLKUREn8jku0lcLsRbnJ5Ey5ScajC/FESPyYWasOW8j8/1EoJksmhbYGKNS6C
urb/KlmDGfVrIRYDbL0ckhGQIP5c6L+kSQZ2sHnQK0e0WgIaZYxaPYeY5u0GLCOze+3vyRMxggJt
MIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYD
VQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxuh2XG3FXRL1W
JOEwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEICCCcJ1u5coGkSZXspSA3epclkJY
vGFdrC8SkIE/7JMdMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIz
MDYwODIzMDAxOVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQCKkuxENMmAfXlUkp5L+SLPu0ScFpXqlLqPZbb6hgxxh/U+
5eYxJjCuJg8A/aBqgMIwXN1QgrNlRowkSla4PLXrHfphQsQbngQsQOhFYdlkfkLa7s78UlwYofOS
SwdB9KRS7MIxB7gYl5k6Y6RdF9tXHd74Mvho/kWYCZlaQxnrZf+NK5YQmabfYppfsO5royBuOS+8
B5RbRQPMQTcz4j24WukCUc+KfWL46Ml3sLFRggAVVras32KyG64bxu0IKXkYHfGrj3KtmVUR6IeJ
mraJni46uroipV0qQSas5bhU9a0tOmqZybHSFlnS3kF1yTepw71nf5wxVaELIuJuSDXR
--00000000000065cc0b05fda63753--
